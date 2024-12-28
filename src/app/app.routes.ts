import { Routes } from '@angular/router';
import { provideRouter } from '@angular/router';
import { bootstrapApplication } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { HealthComponent } from './health/health.component';

export const routes: Routes = [
  { path: '', component: AppComponent },
  { path: 'healthz', component: HealthComponent },
];