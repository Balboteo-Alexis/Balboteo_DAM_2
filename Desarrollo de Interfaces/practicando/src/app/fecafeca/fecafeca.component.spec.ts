import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FecafecaComponent } from './fecafeca.component';

describe('FecafecaComponent', () => {
  let component: FecafecaComponent;
  let fixture: ComponentFixture<FecafecaComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      imports: [FecafecaComponent]
    });
    fixture = TestBed.createComponent(FecafecaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
