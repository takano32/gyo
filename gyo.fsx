(* gyo.fsx *)

open System
open System.IO
(* open System.Linq to use Seq.Count() *)

let readLines filePath = seq {
  (* StreamReader(path: string) : unit *)
  use sr = new StreamReader (filePath: string)
  while not sr.EndOfStream do
    yield sr.ReadLine ()
}

let lines = readLines "TESTDATA"
do printfn "%d" (Seq.length lines)

