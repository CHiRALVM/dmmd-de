//<continuation number="90">
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


scene dm3460.nss_MAIN
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
	#bg301041_5_プラチナジェイル通り路地02=true;
	#bg307021_5_バイクビルエレベーター=true;
	#bg307011_5_バイクビル前通り=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3470_vs.nss";

}


scene dm3460.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	Delete("上背景");

	FadeDelete("絵色黒", 1000, null, true);

//※時間経過

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The scenery outside of the window hadn't changed&, but 
according to my Coil it was deep into the night&.

{
	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Once I'm done getting ready&, I activate Ren then put him 
in my bag&. I soon head for the door to leave the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/6000010a05">
"Let's go&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/6000020a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014a]
I nod and follow after Mink&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014b]
Tori swoops down from the second floor and lands on Mink's shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureEX("絵背景", 100, -519, 31, "cg/bg/l/bg301011_5_プラチナジェイル大通り3ブラック_l.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 1400, 1400, null, true);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

	Move("絵背景", 1000, -519, 161, Dxl1, false);
	Fade("絵背景", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
We leave out the front door&, and see the tower brilliantly 
piercing the night sky over the city streets&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/6000030a01">
"Toue's up in there&, right?"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/6000040a05">
"Yeah&. He's in the tower to hold a meeting over the
 event&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景");

	OnBG(10,"bg301011_5_プラチナジェイル大通り3ブラック");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
We walk through the bustling streets silently on our way&.

We gradually come closer to the tower&, it growing larger 
as we approach&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
I thought of bursting in&, but Mink changes his direction 
to a side ways off from the Tower&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/6000050a01">
"?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg307011_5_バイクビル前通り");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
We walked to a building next to the tower&.&.&. Or rather&, 
pretty far away from it&.

It was tall as well&, and it didn't seem as if tenants were in it&. Looks like there's no one here&.

Mink goes around the building to the back door&.

Without the need to release a keylock&, the door opens with a little push of his hand&.

{
	CreateSE("SE01","se物体_ドア鉄_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
}
The door quickly flings open&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/6000060a01">
"It wasn't locked or anything?"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/6000070a05">
"I broke it&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/6000080a01">
"Broke it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/6000090a05">
"Well&, my team did&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
&.&.&.So this was part of the plan too?

On the other side of the door Mink opened was a staircase 
and an elevator&. That's all there is&, maybe because we came
through the back door&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	Wait(16);

	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
	MusicStart("SE01",0,700,0,600,null,false);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1500, 1000, null, true);

	dm3460_elevator_create(200);

	OnBG(10,"bg307021_5_バイクビルエレベーター");
	FadeBG(0,true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
We go into the elevator and Mink presses the button for 
the top floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);


	CreateSE("SE11","se物体_エレベータ雑居_駆動01L");
	MusicStart("SE11",0,700,0,300,null,true);
	SetFrequency("SE11", 2000, 1000, AxlAuto);

	Fade("絵色黒", 2000, 0, null, true);
	dm3460_elevator_fade(200,2000);
	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043a]
The top floor&.&.&. Are we going to the rooftop?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/6000091a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0047]
In the silence I can hear the sound of a motor growing 
louder as we ascend&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1000);

	Fade("絵色黒", 2000, 1000, null, true);

	Wait(2000);

	SetVolumeEX("SE11", 5000, 0, null);
	SetFrequency("SE11", 5000, 300, AxlDxl);

	Wait(4000);

	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
	MusicStart("SE01",0,700,0,600,null,false);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
The elevator comes to a calm stop and the doors open&.

In front of me is a narrow hallway and a door into the 
rooftop&.

This door is broken just like the one before&.

Mink walks right up to the door and simply opens it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm3470_vs.nss"]

}

function dm3460_elevator_create(優先度)
{

	$dm3460_floor=1;

	while($dm3460_floor<25){

		if($dm3460_floor>=10){
			$dm3460_floor_filename = "cg/bg/x/bg307021_5_バイクビルエレベーター_階"+$dm3460_floor+".jpg";
		}else{
			$dm3460_floor_filename = "cg/bg/x/bg307021_5_バイクビルエレベーター_階0"+$dm3460_floor+".jpg";
		}
		$dm3460_floor_nutname = "elevator_floor"+$dm3460_floor;
		CreateTextureEX($dm3460_floor_nutname, 優先度, 0, 160, $dm3460_floor_filename);

		$dm3460_floor++;	

	}

	CreateColorEX("elevator_black", 優先度, "000000");

}

function dm3460_elevator_fade($dm3460_floor_fadetime,$dm3460_floor_waittime)
{
	$dm3460_floor_pro="elevator_pro";
	CreateProcess($dm3460_floor_pro, 150, 0, 0, "dm3460_elevator_fade_pro");
	SetAlias($dm3460_floor_pro, $dm3460_floor_pro);
	Request($dm3460_floor_pro, Start);
}

function dm3460_elevator_fade_pro()
{

	$dm3460_floor=1;
	$dm3460_black_fadetime=$dm3460_floor_waittime*4;

	while($dm3460_floor<25){

		if($dm3460_floor==19){
			Fade("@elevator_black", $dm3460_black_fadetime, 1000, null, false);
		}

		$dm3460_floor_nutname = "@elevator_floor"+$dm3460_floor;
		Fade($dm3460_floor_nutname, $dm3460_floor_fadetime, 1000, null, true);
		Wait($dm3460_floor_waittime);

		$dm3460_floor++;

	}

}