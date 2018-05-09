int [] lines = new int [50];
int z;

void setup() {
  size(400, 400);
  background(255);
  stroke(0);
}

void draw() {
  for (int i = 0; i < lines.length; i++) {
    lines[i] = int(random(1, 400));
    z += 2;
    if (lines[i] >= 200) {
      fill(0);
      line(z, 400, z, lines[i]);
    } else if (lines[i]<200) {
      fill(0);
      line(z, 0, z, lines[i]);
    }
  }
}