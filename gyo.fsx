(* gyo.fsx *)

open System
open System.IO

let readLines filePath = seq {
  (* StreamReader(path: string) : unit *)
  use sr = new StreamReader (filePath: string)
  while not sr.EndOfStream do
    yield sr.ReadLine ()
}

let lines = readLines "TESTDATA"
let lengths = Seq.map String.length lines

