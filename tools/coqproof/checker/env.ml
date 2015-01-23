open Batteries

exception CException of string

type key = string
type intv = Intv.t
type t = (key, intv) Map.t

let keys = Map.keys

let find (x : key) (e : t) : intv
    = Map.find x e

let order (e1 : t) (e2 : t) : bool =
  Map.for_all
    (fun x i1 ->
      let i2 = find x e2 in
      Intv.order i1 i2
    )
    e1

let join (e1 : t) (e2 : t) : t =
  Map.merge
    (fun x i1_op i2_op ->
      match (i1_op, i2_op) with
          (Some i1, Some i2) -> Some (Intv.join i1 i2)
        | _ -> raise (CException "Merge fail"))
    e1
    e2

let print out =
  Map.print ~first:"" ~last:"\n" ~sep:", \n"
    String.print
    Intv.print
    out

let to_list (e : t) : (key * intv) list
    = List.of_enum (Map.backwards e)

let from_list (l : (key * intv) list) : t =
  List.fold_left
    (fun e (k, i) -> Map.add k i e)
    Map.empty
    l

let make = from_list

let equals (e1 : t) (e2 : t) : bool =
  not (List.mem
       false
       (List.map
          (fun ((_, i1), (_, i2)) ->
            Intv.equals i1 i2)
          (List.combine (to_list e1) (to_list e2))))

let is_empty (e : t) : bool =
  List.mem true
    (List.map
       (fun (_, {Intv.low = l; Intv.high = h})
       -> (Float.compare l h) = 0)
       (to_list e))

(* minus e1 e2 == (e1 - e2) *)
let minus (e1 : t) (e2 : t) : (t list) =
  let extract_diff_dim l1 l2 =
    let diff_list =
      List.filter
        (fun ((_, i1), (_, i2))
        -> not (Intv.equals i1 i2))
        (List.combine l1 l2) in
    match diff_list with
    | hd::[] -> hd
    | _ -> raise (CException ("Two envs differ on multiple dimensions: " ^ string_of_int (List.length diff_list)))
  in
  let l1 = to_list e1 in
  let l2 = to_list e2 in
  let ((key, _), (_, _)) = extract_diff_dim l1 l2 in
  let (l1', l2') =
    List.split
      (List.map
         (fun (((key1, {Intv.low = l1; Intv.high = h1}) as elem1),
             ((key2, {Intv.low = l2; Intv.high = h2}) as elem2))
         ->
           if key != key1 then
             (elem1, elem2)
           else
             ((key1, {Intv.low = l1; Intv.high = l2}),
              (key2, {Intv.low = h1; Intv.high = h2}))
         )
         (List.combine l1 l2)
      )
  in
  List.filter (fun e -> not (is_empty e)) [from_list l1';from_list l2']

let left_bound (e : t) : (string, float) Map.t =
  let keys = keys e in
  let items = Enum.map
    (fun key -> let intv = find key e in
             let v = Intv.left_bound intv in
             (key, v)
    )
    keys in
  Map.of_enum items


let right_bound (e : t) : float list =
  let keys = List.of_enum (keys e) in
  List.map
    (fun key -> let intv = find key e in Intv.right_bound intv)
    keys

type nintv = Intv.nt
type nt = (key, nintv) Map.t

let from_nlist (l : (key * nintv) list) : nt =
  List.fold_left
    (fun e (k, i) -> Map.add k i e)
    Map.empty
    l

let to_nlist (e : nt) : (key * nintv) list
    = List.of_enum (Map.backwards e)

let nmake = from_nlist

let to_env (e : nt) : t =
  make (List.map
	   (fun (key, nintv) -> (key, Intv.to_intv nintv))
	   (to_nlist e))

let of_env (e : t) : nt =
  nmake (List.map
	   (fun (key, intv) -> (key, Intv.of_intv intv))
	   (to_list e))

let coq_nprint out (e : nt)  =
  let nenv_list = to_nlist e in
  let print_nenv out (x, {Intv.nlow=l; Intv.nhigh=h}) =
    Printf.fprintf out "(%s <= %s <= %s)%%R" (Num.to_string l) x (Num.to_string h) in
  let _ = 
    List.print ~first:"forall " ~last:",\n" ~sep:" "
	       String.print
	       out
	       (List.of_enum (keys e)) in
  List.print ~first:"" ~last:" -> \n" ~sep:" /\\\n"
	     print_nenv
	     out
	     nenv_list

let nfind (x : key) (e : nt) : nintv
    = Map.find x e

let norder (e1 : nt) (e2 : nt) : bool =
  Map.for_all
    (fun x i1 ->
      let i2 = nfind x e2 in
      Intv.norder i1 i2
    )
    e1

let njoin (e1 : nt) (e2 : nt) : nt =
  Map.merge
    (fun x i1_op i2_op ->
      match (i1_op, i2_op) with
          (Some i1, Some i2) -> Some (Intv.njoin i1 i2)
        | _ -> raise (CException "Merge fail"))
    e1
    e2

let nequals (e1 : nt) (e2 : nt) : bool =
  not (List.mem
       false
       (List.map
          (fun ((_, i1), (_, i2)) ->
            Intv.nequals i1 i2)
          (List.combine (to_nlist e1) (to_nlist e2))))

let nprint out =
  Map.print ~first:"" ~last:"\n" ~sep:", \n"
    String.print
    Intv.nprint
    out

let is_nempty (e : nt) : bool =
  List.mem true
    (List.map
       (fun (_, {Intv.nlow = l; Intv.nhigh = h})
       -> (Num.eq_num l h))
       (to_nlist e))

(* minus e1 e2 == (e1 - e2) *)
let nminus (e1 : nt) (e2 : nt) : (nt list) =
  let extract_diff_keys l1 l2 =
    let diff_list =
      List.filter
	(fun ((_, i1), (_, i2))
	 -> not (Intv.nequals i1 i2))
	(List.combine l1 l2) in
    List.map (fun ((key, _), (_, _)) -> key) diff_list
  in
  let l1 = to_nlist e1 in
  let l2 = to_nlist e2 in
  let l12 = List.combine l1 l2 in
  let diff_keys = extract_diff_keys l1 l2 in
  let subt diff_key =
    let (l1', l2') =
      List.split
	(List.map
           (fun (((key1, {Intv.nlow = l1; Intv.nhigh = h1}) as elem1),
		 ((key2, {Intv.nlow = l2; Intv.nhigh = h2}) as elem2))
            ->
            if key1 != diff_key then
              (elem1, elem1)
            else
              ((key1, {Intv.nlow = l1; Intv.nhigh = l2}),
               (key2, {Intv.nlow = h2; Intv.nhigh = h1}))
           )
           l12) in
    [l1'; l2'] in
  let subt_nenvs = [] in
  List.filter (fun e -> not (is_nempty e))
  	      (List.map (fun l -> nmake l) 
			(List.fold_left
			   (fun l k -> (List.append l (subt k)))
			   subt_nenvs
			   diff_keys))

