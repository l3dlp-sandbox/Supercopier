{
    This file is part of SuperCopier.

    SuperCopier is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    SuperCopier is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
}

program SuperCopier;

{$MODE Delphi}

{%File 'ana sc.txt'}
{%File 'SCBuildConfig.inc'}
{%File 'todo sc.txt'}
{%File 'Compil\ReadMe.txt'}
{%File 'Compil\LisezMoi.txt'}

uses
  Forms,
  LCLIntf, LCLType, LMessages, Interfaces,
  Messages,
  SCMainForm in 'SCMainForm.pas' {MainForm},
  SCBaseList in 'SCBaseList.pas',
  SCCopier in 'SCCopier.pas',
  SCDirList in 'SCDirList.pas',
  SCFileList in 'SCFileList.pas',
  SCLocStrings in 'SCLocStrings.pas',
  SCCommon in 'SCCommon.pas',
  SCObjectThreadList in 'SCObjectThreadList.pas',
  SCConfig in 'SCConfig.pas',
  SCCopyThread in 'SCCopyThread.pas',
  SCWin32 in 'SCWin32.pas',
  SCCopyForm in 'SCCopyForm.pas' {CopyForm},
  SCWorkThread in 'SCWorkThread.pas',
  SCWorkThreadList in 'SCWorkThreadList.pas',
  SCDiskSpaceForm in 'SCDiskSpaceForm.pas' {DiskSpaceForm},
  SCCollisionForm in 'SCCollisionForm.pas' {CollisionForm},
  SCCollisionRenameForm in 'SCCollisionRenameForm.pas' {CollisionRenameForm},
  SCCopyErrorForm in 'SCCopyErrorForm.pas' {CopyErrorForm},
  SCConfigForm in 'SCConfigForm.pas' {ConfigForm},
  SCAboutForm in 'SCAboutForm.pas' {AboutForm},
  SCWideUnbufferedCopier in 'SCWideUnbufferedCopier.pas',
  SCConfigShared in 'SCConfigShared.pas',
  SCLocEngine in 'SCLocEngine.pas',
  SCBaseListQueue in 'SCBaseListQueue.pas',
  SCAPI in 'SCAPI.pas',
  SCAPICommon in 'SCAPICommon.pas',
  SCProcessPrivileges in 'SCProcessPrivileges.pas';

{$R *.res}

begin
  Application.Initialize;

  // nйcessaire pour avoir le droit de copier la sйcuritй des dossiers et fichiers
  ProcessSetPrivilege(SE_SECURITY_NAME,True);

  //SetParent(Application.MainForm.Handle,THandle(-3{HWND_MESSAGE})); // cacher la form du TApplication SL-27
  Application.ShowMainForm:=False;

  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
