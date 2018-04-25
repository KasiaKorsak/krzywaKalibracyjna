function varargout = projekt_wyniki(varargin)
% PROJEKT_WYNIKI MATLAB code for projekt_wyniki.fig
%      PROJEKT_WYNIKI, by itself, creates a new PROJEKT_WYNIKI or raises the existing
%      singleton*.
%
%      H = PROJEKT_WYNIKI returns the handle to a new PROJEKT_WYNIKI or the handle to
%      the existing singleton*.
%
%      PROJEKT_WYNIKI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEKT_WYNIKI.M with the given input arguments.
%
%      PROJEKT_WYNIKI('Property','Value',...) creates a new PROJEKT_WYNIKI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projekt_wyniki_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projekt_wyniki_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projekt_wyniki

% Last Modified by GUIDE v2.5 21-Jan-2017 20:40:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projekt_wyniki_OpeningFcn, ...
                   'gui_OutputFcn',  @projekt_wyniki_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before projekt_wyniki is made visible.
function projekt_wyniki_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to projekt_wyniki (see VARARGIN)

% Choose default command line output for projekt_wyniki
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projekt_wyniki wait for user response (see UIRESUME)
% uiwait(handles.figure1);


global absorbancje;
wszystko=absorbancje;

global wsp
wspolczynnik=wsp;

set(handles.a1, 'String',wszystko(1));
set(handles.a2, 'String',wszystko(2));
set(handles.a3, 'String',wszystko(3));
set(handles.a4, 'String',wszystko(4));

i=1:length(wszystko);
stezenie(i)=wszystko(i)/wspolczynnik;
set(handles.s1, 'String',stezenie(1));
set(handles.s2, 'String',stezenie(2));
set(handles.s3, 'String',stezenie(3));
set(handles.s4, 'String',stezenie(4));

st=[stezenie(1) stezenie(2) stezenie(3) stezenie(4)];
handles.dane=st;
guidata(hObject,handles);

global obliczone;
obliczone=st;
global s
S=s;
global a
A=a;
wyk=@wykres2;
wyk(S,A,obliczone,absorbancje);


% --- Outputs from this function are returned to the command line.
function varargout = projekt_wyniki_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=handles.dane;
p1=fopen('wyniki.txt','w');
for i=1:length(a)
fprintf(p1,'%f\t',a(i));
end
fclose(p1);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(projekt_wyniki);