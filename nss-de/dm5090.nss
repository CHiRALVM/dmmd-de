//<continuation number="10">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm5090.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	#bg302051_5_グリッター前通り=true;
	#bg302052_5_グリッター前通りグリッター看板=true;
	#bg302051_5_グリッターエントランス=true;
	#bg302021_5_グリッター居間=true;
	#bg302041_5_グリッター廊下=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5100.nss";

}


scene dm5090.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	SoundPlay("@dm004",0,450,true);

	Delete("上背景");
	DrawDelete("絵色黒", 500, 100, null, "blind_01_00_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
As we make our way to the place marked in red&, there were 
buildings on every corner&. It was an extravagant bunch of 
single houses lined up against each other&.

But there seemed to be ranks between them&, as our house 
was a small two story building&.

They all looked the same on the outside&, but the inside 
was kind of old-fashioned&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302052_5_グリッター前通りグリッター看板");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
On the door was a plate with the name GLITTER written on 
it&.

All of the buildings have plates with different names on 
them&, so this must be this building's name&. 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(300);

	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
There's a confirmation monitor by the door; I put my Coil 
up to it and the lock opens&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//※コイルをかざし、ＩＤを読み取る
//※ドアを開ける

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");//あきゅん「ＳＥ：se物体_グリッター玄関_扉開く01a」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	Wait(1000);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(1000);

	Fw("fw蒼葉_通常_shock");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/9000010a01">
"Heh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I was a little astonished when I turned the doorknob and 
went in&.

The inside is much more retro than I had imagined&.&.&. All 
of the furniture looks classic&.

Almost all of it is wooden&, a complete gap between here 
and the white world outside&.

I see a staircase further in up to the second floor and go up it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The first thing I see upon reaching the second floor is 
something that looks like a living room&. To the side of 
it is a small bar counter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Next to it is a long hallway lined with doors&. I check out one of the rooms&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm5100.nss"]

}
