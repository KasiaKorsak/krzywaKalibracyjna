function varargout = projekt_wczytaj(varargin)
% PROJEKT_WCZYTAJ MATLAB code for projekt_wczytaj.fig
%      PROJEKT_WCZYTAJ, by itself, creates a new PROJEKT_WCZYTAJ or raises the existing
%      singleton*.
%
%      H = PROJEKT_WCZYTAJ returns the handle to a new PROJEKT_WCZYTAJ or the handle to
%      the existing singleton*.
%
%      PROJEKT_WCZYTAJ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEKT_WCZYTAJ.M with the given input arguments.
%
%      PROJEKT_WCZYTAJ('Property','Value',...) creates a new PROJEKT_WCZYTAJ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projekt_wczytaj_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projekt_wczytaj_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projekt_wczytaj

% Last Modified by GUIDE v2.5 19-Jan-2017 15:50:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projekt_wczytaj_OpeningFcn, ...
                   'gui_OutputFcn',  @projekt_wczytaj_OutputFcn, ...
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


% --- Executes just before projekt_wczytaj is made visible.
function projekt_wczytaj_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to projekt_wczytaj (see VARARGIN)

% Choose default command line output for projekt_wczytaj
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projekt_wczytaj wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = projekt_wczytaj_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output; 
 

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Zawartosc1.
function Zawartosc1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Zawartosc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Zawartosc1.
function Zawartosc2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Zawartosc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Lokalizacja.
function Lokalizacja_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Lokalizacja (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Dalej.
function Dalej_Callback(hObject, eventdata, handles)
% hObject    handle to Dalej (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
projekt_analiza;
close(projekt_wczytaj);


% --- Executes on button press in stezenia.
function stezenia_Callback(hObject, eventdata, handles)
% hObject    handle to stezenia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname] = uigetfile({'*.txt'},'File Selector');
 fullpathname = strcat(pathname, filename);
 text=textscan(fopen(fullpathname),'%f');
 
 set(handles.Lokalizacja, 'String', fullpathname)
 set(handles.Zawartosc1, 'String', text)
 
 S=text{1,1}';
 global s;
 s=S;
 

% --- Executes on button press in absorbancja.
function absorbancja_Callback(hObject, eventdata, handles)
% hObject    handle to absorbancja (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname] = uigetfile({'*.txt'},'File Selector');
 fullpathname = strcat(pathname, filename);
 text=textscan(fopen(fullpathname),'%f');
 
 set(handles.Lokalizacja, 'String', fullpathname)
 set(handles.Zawartosc2, 'String', text)
 
 A=text{1,1}';
 global a;
 a=A;
 
