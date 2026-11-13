import { ComponentFixture, TestBed } from '@angular/core/testing';
import { Heroe } from './heroe';

describe('Heroe', () => {
  let component: Heroe;
  let fixture: ComponentFixture<Heroe>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Heroe],
    }).compileComponents();

    fixture = TestBed.createComponent(Heroe);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
