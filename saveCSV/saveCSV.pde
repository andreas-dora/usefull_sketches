Table table;

void setup() {

  table = new Table();
  
  table.addColumn("Alarm");
  table.addColumn("GrPause");
  table.addColumn("Pomodore");
  table.addColumn("KlPause");
  table.addColumn("totalPomodore");

  
  TableRow newRow = table.addRow();
  newRow.setInt("Alarm", 600000);
  newRow.setInt("GrPause", 900000);
   newRow.setInt("Pomodore", 1500000);
  newRow.setInt("KlPause", 360000);
  newRow.setInt("totalPomodore", 102);

  
  saveTable(table, "data/pref.csv");
}
