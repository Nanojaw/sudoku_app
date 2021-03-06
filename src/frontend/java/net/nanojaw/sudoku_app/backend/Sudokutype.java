/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 4.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package net.nanojaw.sudoku_app.backend;

public final class Sudokutype {
  public final static Sudokutype sudoku = new Sudokutype("sudoku");
  public final static Sudokutype hexSudoku = new Sudokutype("hexSudoku");

  public final int swigValue() {
    return swigValue;
  }

  public String toString() {
    return swigName;
  }

  public static Sudokutype swigToEnum(int swigValue) {
    if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
      return swigValues[swigValue];
    for (int i = 0; i < swigValues.length; i++)
      if (swigValues[i].swigValue == swigValue)
        return swigValues[i];
    throw new IllegalArgumentException("No enum " + Sudokutype.class + " with value " + swigValue);
  }

  private Sudokutype(String swigName) {
    this.swigName = swigName;
    this.swigValue = swigNext++;
  }

  private Sudokutype(String swigName, int swigValue) {
    this.swigName = swigName;
    this.swigValue = swigValue;
    swigNext = swigValue+1;
  }

  private Sudokutype(String swigName, Sudokutype swigEnum) {
    this.swigName = swigName;
    this.swigValue = swigEnum.swigValue;
    swigNext = this.swigValue+1;
  }

  private static Sudokutype[] swigValues = { sudoku, hexSudoku };
  private static int swigNext = 0;
  private final int swigValue;
  private final String swigName;
}

