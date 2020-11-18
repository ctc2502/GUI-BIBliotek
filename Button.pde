class Button {
  String navn; 
  float x, y, w, h;
  Action a;

  Button(int x, int y, int w, int h, String n) {
    this. x=x;
    this. y=y;
    this. w=w;
    this. h=h;
    navn=n;
  }

  void addAction(Action a) {
    this.a=a;
  }
  void display() {

    rect(x, y, w, h);
    fill(0);
    text(navn, x+70, y+30);
    fill(255);
  }

  void click() {
    if (mouseX>=x && mouseX <=x+w && mouseY>=y && mouseY<=y+h) {
      a.execute();
    }
  }
}
