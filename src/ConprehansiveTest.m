%---------Designer:Chen Tianyang--------%
%-----------Time:29.8.2016--------------%
%------  Contact:tychen@whu.edu.cn  ----%
%------  Content:MyPiano  --------------%


function varargout = ConprehansiveTest(varargin)
% CONPREHANSIVETEST MATLAB code for ConprehansiveTest.fig
%      CONPREHANSIVETEST, by itself, creates a new CONPREHANSIVETEST or raises the existing
%      singleton*.
%
%      H = CONPREHANSIVETEST returns the handle to a new CONPREHANSIVETEST or the handle to
%      the existing singleton*.
%
%      CONPREHANSIVETEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONPREHANSIVETEST.M with the given input arguments.
%
%      CONPREHANSIVETEST('Property','Value',...) creates a new CONPREHANSIVETEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ConprehansiveTest_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ConprehansiveTest_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ConprehansiveTest

% Last Modified by GUIDE v2.5 30-Aug-2016 18:48:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ConprehansiveTest_OpeningFcn, ...
                   'gui_OutputFcn',  @ConprehansiveTest_OutputFcn, ...
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


% --- Executes just before ConprehansiveTest is made visible.
function ConprehansiveTest_OpeningFcn(hObject, eventdata, handles, varargin)
global Score Score1 Score2 Score3 Score4 Score5 Score6 Score7 Score8 Score9 
global Score10 Score11 Score12 Score13 Score14 Score15 Score16 Score17 Score18 Score19
Score = 0;Score1 = 0;Score2 = 0;Score3 = 0;Score4 = 0;Score5 = 0;Score6 = 0;
Score7 = 0;Score8 = 0;Score9 = 0;Score10 = 0;Score11 = 0;Score12 = 0;Score13 = 0;
Score14 = 0;Score15 = 0;Score16 = 0;Score17 = 0;Score18 = 0;Score19 = 0;
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ConprehansiveTest (see VARARGIN)

% Choose default command line output for ConprehansiveTest
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ConprehansiveTest wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ConprehansiveTest_OutputFcn(hObject, eventdata, handles) 
smile1 = imread('smile1.jpg');
s = 'Welcome To This Comprehensive Test!';            %窗口出现后的响应
hs = msgbox(s,'Welcome!','custom',smile1);      
ht = findobj(hs, 'Type', 'text');                %修改字体大小
set(ht, 'FontSize', 12, 'Unit', 'normal','FontName','Times New Roman');
 %position [a b c d]确定绘图区域的位置, [a b]为绘图区域左下点的坐标。c，d分别为绘图区域的宽和高
 %会先显示原本的msgbox，控制适当的四个坐标参数将后重新设置者覆盖前者
set(hs,'Position',[480 380 280 80]);       

fn = uigetfile('Welcome.wav','Open File');
[y,fs] = audioread(fn);
sound(y,fs);
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function edit1_Callback(hObject, eventdata, handles)          %callback函数不可删除，只要你想往里面写东西

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)
global Score1
YourAns = get(handles.edit4,'String');
RightAns = 'one';
if strcmp(YourAns,RightAns) == 1
    Score1 = 5;
else
    Score1 = 0;
end

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)
%弹出式对话框
s = sprintf('The lost word is"bone",the sentence means"江山易改，本性难移" in Chinese.');
msgbox(s,'Correct Answer And Analysis:','help');

function edit5_Callback(hObject, eventdata, handles)
global Score2
YourAns = get(handles.edit5,'String');
RightAns = 'hadows';
if strcmp(YourAns,RightAns) == 1
    Score2 = 5;
else
    Score2 = 0;
end

function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton4_Callback(hObject, eventdata, handles)
%弹出式对话框
s = sprintf('The lost word is"shadows",the sentence means"未来之事，必有前兆" in Chinese.');
msgbox(s,'Correct Answer And Analysis:','help');

function edit6_Callback(hObject, eventdata, handles)
global Score3
YourAns = get(handles.edit6,'String');
RightAns = 'ome';
if strcmp(YourAns,RightAns) == 1
    Score3 = 5;
else
    Score3 = 0;
end

function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton5_Callback(hObject, eventdata, handles)
%弹出式对话框
s = sprintf('The lost word is"Rome",the sentence means"冰冻三尺非一日之寒" in Chinese." ');
msgbox(s,'Correct Answer And Analysis:','help');

function edit7_Callback(hObject, eventdata, handles)
global Score4
YourAns = get(handles.edit7,'String');
RightAns = '留取丹心照汗青';
if strcmp(YourAns,RightAns) == 1
    Score4 = 5;
else
    Score4 = 0;
end

function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton6_Callback(hObject, eventdata, handles)
%弹出式对话框
s = sprintf('"留取丹心照汗青"\n\nThe sentence means"Since death is unavoidable to everyone throughout history, what one should strive for is a loyal heart, gloriously recorded in the historic books." in English.');
msgbox(s,'Correct Answer And Analysis:','help');

function edit8_Callback(hObject, eventdata, handles)
global Score5
YourAns = get(handles.edit8,'String');
RightAns = '不辞长作岭南人';
if strcmp(YourAns,RightAns) == 1
    Score5 = 5;
else
    Score5 = 0;
end

function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton7_Callback(hObject, eventdata, handles)
%弹出式对话框
s = sprintf('"不辞长作岭南人"\n\nThe sentence means" I would rather be a southerner if I could have 300 litchis a day." in English.');
msgbox(s,'Correct Answer And Analysis:','help');

function edit9_Callback(hObject, eventdata, handles)
global Score6
YourAns = get(handles.edit9,'String');
RightAns = '处江湖之远则忧其君';
if strcmp(YourAns,RightAns) == 1
    Score6 = 5;
else
    Score6 = 0;
end

function edit9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton8_Callback(hObject, eventdata, handles)
%弹出式对话框
s = sprintf('"处江湖之远则忧其君"\n\nThe sentence means" When he is powerful ,he is concerned about his people.When he lacks of capacity,he is concerned about his monarch." in English.');
msgbox(s,'Correct Answer And Analysis:','help');

function pushbutton9_Callback(hObject, eventdata, handles)
fn = uigetfile('*wav','Open File');
[y,fs] = audioread(fn);
% t = 0:1/fs:(length(y)-1)/fs;
sound(y,fs);

function radiobutton1_Callback(hObject, eventdata, handles)
global Score7
Score7 = 0;
function radiobutton2_Callback(hObject, eventdata, handles)
global Score7
Score7 = 5;
function radiobutton3_Callback(hObject, eventdata, handles)
global Score7
Score7 = 0;

function radiobutton4_Callback(hObject, eventdata, handles)
global Score8
Score8 = 0;
function radiobutton5_Callback(hObject, eventdata, handles)
global Score8
Score8 = 0;
function radiobutton6_Callback(hObject, eventdata, handles)
global Score8
Score8 = 5;

function radiobutton7_Callback(hObject, eventdata, handles)
global Score9
Score9 = 0;
function radiobutton8_Callback(hObject, eventdata, handles)
global Score9
Score9 = 5;
function radiobutton9_Callback(hObject, eventdata, handles)
global Score9
Score9 = 0;

function pushbutton10_Callback(hObject, eventdata, handles)
%打开文档，含有题目的解析
open('D:\My Matlab Files\No7_Answer.txt');

function pushbutton13_Callback(hObject, eventdata, handles)
%打开文档，含有题目的解析
open('D:\My Matlab Files\No8_Answer.txt');

function pushbutton14_Callback(hObject, eventdata, handles)
%打开文档，含有题目的解析
open('D:\My Matlab Files\No9_Answer.txt');


function pushbutton16_Callback(hObject, eventdata, handles)
fn = uigetfile('No10.jpg','Open File');
y = imread(fn);
axes(handles.axes1);
imshow(y);

function edit11_Callback(hObject, eventdata, handles)
global Score10
YourAns = get(handles.edit11,'String');
switch str2double(YourAns)
    case 1
        Score10 = 1;
    case 2
        Score10 = 2;
    case 3
        Score10 = 3;
    case 4
        Score10 = 4;
    case 5
        Score10 = 5;
    case 6
        Score10 = 6;
    case 7
        Score10 = 7;
    case 8
        Score10 = 8;     %此处无需break！注意break的用法
    case 9
        Score10 = 9;
    case 10
        Score10 = 10;        
    otherwise           %注意不是default了！
        Score10 = 0;
end

function edit11_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton17_Callback(hObject, eventdata, handles)
fn = uigetfile('No10_Ans.jpg','Open File');
y = imread(fn);
axes(handles.axes1);
imshow(y);
s = sprintf('There are 10 heads in the picture,see as what is showed.');
msgbox(s,'Correct Answer and Analysis.','help');

function edit13_Callback(hObject, eventdata, handles)
global Score11
YourAns = get(handles.edit13,'String');
RightAns = '苟利国家生死以';
if strcmp(YourAns,RightAns) == 1;
    Score11 = 5;
else
    Score11 = 0;
end

% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit14_Callback(hObject, eventdata, handles)
global Score12
YourAns = get(handles.edit14,'String');
RightAns = '岂因祸福避趋之';
if strcmp(YourAns,RightAns) == 1;
    Score12 = 5;
else
    Score12 = 0;
end

% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton18_Callback(hObject, eventdata, handles)
fn = uigetfile('No11.jpg','Open File');
y = imread(fn);
axes(handles.axes1);
imshow(y);

function pushbutton19_Callback(hObject, eventdata, handles)
s = sprintf('"苟利国家生死以,岂因祸福避趋之"\n\nThese characters are too thin to recognize and the two lines are perpendicular to each other.You must Rotate it 90 degrees counter clockwise to read the second line.');
msgbox(s,'Correct Answer And Analysis:','help');

function edit15_Callback(hObject, eventdata, handles)
global Score13
YourAns = get(handles.edit15,'String');
RightAns = '就算大雨让整个世界颠倒';
if strcmp(YourAns,RightAns) == 1;
    Score13 = 7;
else
    Score13 = 0;
end

function edit15_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit16_Callback(hObject, eventdata, handles)
global Score14
YourAns = get(handles.edit16,'String');
RightAns = '我会给你怀抱';
if strcmp(YourAns,RightAns) == 1;
    Score14 = 3;
else
    Score14 = 0;
end

function edit16_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton20_Callback(hObject, eventdata, handles)
fn = uigetfile('No12.jpg','Open File');
y = imread(fn);
axes(handles.axes1);
imshow(y);

function pushbutton21_Callback(hObject, eventdata, handles)
s = sprintf('"就算大雨让整个世界颠倒，我会给你怀抱"\n\nThese characters are too thin to recognize and the two lines are perpendicular to each other.You must Rotate it 90 degrees counter clockwise to read the second line.');
msgbox(s,'Correct Answer And Analysis:','help');

function edit17_Callback(hObject, eventdata, handles)
global Score15
YourAns = get(handles.edit17,'String');
RightAns = '自鸣得意';
if strcmp(YourAns,RightAns) == 1;
    Score15 = 5;
else
    Score15 = 0;
end

function edit17_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton22_Callback(hObject, eventdata, handles)
fn = uigetfile('No13(1).jpg','Open File');
y = imread(fn);
axes(handles.axes1);
imshow(y);

function pushbutton23_Callback(hObject, eventdata, handles)
s = sprintf('自鸣得意');
msgbox(s,'Correct Answer And Analysis:','help');

function edit19_Callback(hObject, eventdata, handles)
global Score16
YourAns = get(handles.edit19,'String');
RightAns = '一身是胆';
if strcmp(YourAns,RightAns) == 1;
    Score16 = 5;
else
    Score16 = 0;
end

function edit19_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton24_Callback(hObject, eventdata, handles)
fn = uigetfile('No13(2).jpg','Open File');
y = imread(fn);
axes(handles.axes1);
imshow(y);

function pushbutton25_Callback(hObject, eventdata, handles)
s = sprintf('一身是胆');
msgbox(s,'Correct Answer And Analysis:','help');

function edit23_Callback(hObject, eventdata, handles)
global Score17
YourAns = get(handles.edit23,'String');
RightAns = '分庭抗礼';
if strcmp(YourAns,RightAns) == 1
    Score17 = 5;
else 
    Score17 = 0;
end

function edit23_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton32_Callback(hObject, eventdata, handles)
fn = uigetfile('No13(3).jpg','Open File');
y = imread(fn);
axes(handles.axes1);
imshow(y);

function pushbutton33_Callback(hObject, eventdata, handles)
s = sprintf('分庭抗礼');
msgbox(s,'Correct Answer And Analysis:','help');

function edit24_Callback(hObject, eventdata, handles)
global Score18
YourAns = get(handles.edit24,'String');
RightAns = '一网打尽';
if strcmp(YourAns,RightAns) == 1
    Score18 = 5;
else 
    Score18 = 0;
end

function edit24_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton34_Callback(hObject, eventdata, handles)
fn = uigetfile('No13(4).jpg','Open File');
y = imread(fn);
axes(handles.axes1);
imshow(y);

function pushbutton35_Callback(hObject, eventdata, handles)
s = sprintf('一网打尽');
msgbox(s,'Correct Answer And Analysis:','help');


function edit25_Callback(hObject, eventdata, handles)
global Score19
YourAns = get(handles.edit25,'String');
RightAns = '浮光掠影';
if strcmp(YourAns,RightAns) == 1
    Score19 = 5;
else 
    Score19 = 0;
end

function edit25_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton36_Callback(hObject, eventdata, handles)
fn = uigetfile('No13(5).jpg','Open File');
y = imread(fn);
axes(handles.axes1);
imshow(y);

function pushbutton37_Callback(hObject, eventdata, handles)
s = sprintf('浮光掠影');
msgbox(s,'Correct Answer And Analysis:','help');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
global Score Score1 Score2 Score3 Score4 Score5 Score6 Score7 Score8 Score9 Score10 Score11 Score12 Score13 Score14 Score15 Score16 Score17 Score18 Score19
Score = Score1+Score2+Score3+Score4+Score5+Score6+Score7+Score8+Score9+...
        Score10+Score11+Score12+Score13+Score14+Score15+Score16+Score17+Score18+Score19;
set(handles.edit3,'String',num2str(Score));
Excellent = imread('Excellent.JPG');
Good = imread('Good.JPG');
JustSoSo = imread('JustSoSo.JPG');
Pass = imread('Pass.jpg');
Fail = imread('Fail.JPG');
if Score == 100
    msgbox('Excellent!','Comment For You:','Custom',Excellent);
elseif (Score >= 80 && Score < 100)
    msgbox('Good!','Comment For You:','Custom',Good);
elseif (Score >= 70 && Score < 80)
    msgbox('JustSoSo!','Comment For You:','Custom',JustSoSo);
elseif (Score >= 60 && Score < 70)
    msgbox('Pass!','Comment For You:','Custom',Pass);   
elseif Score < 60
    msgbox('Fail!','Comment For You:','Custom',Fail);
end
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
