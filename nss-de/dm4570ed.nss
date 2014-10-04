//<continuation number="70">
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


scene dm4570ed.nss_MAIN
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
	#ev457クリアGOODＥＤ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//★エンドロール
	PreSetRoll(12);
	TheEND(12);

#GDED4=1;//クリアグッドエンドフラグ取得

}


scene dm4570ed.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//※演出：画面暗転／場面転換

	PrintBG("上背景", 30000);

	OnBG(10,"bg104001_1_蒼葉宅前通り");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/7000010a01">
"Whew&.&.&. I'm home!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開くゆっくり01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSPadd("絵背景", 100, Center, Middle, "cg/bg/bg104011_5_蒼葉宅玄関.jpg");
	Fade("絵背景", 0, 600, null, true);


	OnBG(10,"bg104011_5_蒼葉宅玄関消灯");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I come home&, finished with work&, and open up the front 
door&. The entire house is silent&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/7000020a01">
"Huh? Granny?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
She doesn't respond to me in her bellowing voice as she 
usually would&. Maybe she went out&.

{
	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I take off my shoes&, and head up the stairs to my room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	SetVolumeEX("SE*", 1000, 0, null);

	Delete("絵背景*");
	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(0,true);

	FadeDelete("絵板写", 1000, null, true);

	CreateSE("SE02","se物体_窓_カーテン開ける早く01");
	MusicStart("SE02",0,700,0,1000,null,false);

	SoundPlay("@dm020b",1000,200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
When I first get in&, I take Ren out of my bag and close 
the curtains that I've had open since this morning&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/7000030a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
What's that sound&.&.&.?

It's coming from outside&.

{
	CreateSE("SE01","se物体_蒼葉自室窓_開閉01a");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I open the window to the veranda&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm020b", 3000, 300, null);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Night is slowly setting in&, and a breeze is blowing&.

I squint my eyes and walk up to the veranda's handrail&.
I think the thing I heard was&.&.&. a song?

Is someone singing?

It's only faint&, but&.&.&.

This melody&.&.&.

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/7000040a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Surprised&, I lean over the handrail&.

My eyes scan over all of the scenery I can see&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm020b",2000,450,true);

	CreateTextureEX("絵ＥＶ100", 100, Center, 350, "cg/ev/l/ev457クリアGOODＥＤ_l.jpg");
	Zoom("絵ＥＶ100", 0, 1800, 1800, null, true);
	Request("絵ＥＶ100", Smoothing);
	Move("絵ＥＶ100", 1000, @0, @100, Dxl1, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The space between each house&.
The back of the posts&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ101", 101, -1700, -300, "cg/ev/l/ev457クリアGOODＥＤ_l.jpg");
	Zoom("絵ＥＶ101", 0, 1800, 1800, null, true);
	Request("絵ＥＶ101", Smoothing);
	Move("絵ＥＶ101", 1000, @150, @0, Dxl1, false);
	Fade("絵ＥＶ101", 1000, 1000, null, true);
	Delete("絵ＥＶ100");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I look around each street corner&.
The other side of billboards&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ102", 102, -500, -1000, "cg/ev/l/ev457クリアGOODＥＤ_l.jpg");
	Zoom("絵ＥＶ102", 0, 1800, 1800, null, true);
	Request("絵ＥＶ102", Smoothing);
	Move("絵ＥＶ102", 1000, @-400, @0, Dxl1, false);
	Fade("絵ＥＶ102", 1000, 1000, null, true);
	Delete("絵ＥＶ101");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
And then&.&.&.<k><?>
I see something on the rooftop of a house a 
little far away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ102", 1000, @200, @100, Dxl1, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/7000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
In the twilight&, a person sits on the roof of a house&.

The mysterious figure looks like he's holding an umbrella&.

He continues to sing&.<k>
I listen carefully&, trying to make out as much as I can&.

That gentle&, soft&, clear melody&.

//*Put on shades* YEEEEEEEEAAAAAAHHHHH

While bending over the veranda&, I listen to the tune&, 
feeling memories flowing back to me&.
He called it the "Jellyfish Song"&.

And now&.&.&.<k>He's singing it once more&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm020b", 2500, 0, null);

	Move("絵ＥＶ102", 1500, @0, -626, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
He slowly ends the song&, and the person with the umbrella 
turns his head around&.

{
	SoundPlay("@dmedgood",0,450,false);
}
And then&.&.&. my vision starts to blur&.

The person who just turned his head is smiling quietly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ103", 103, -626, -519, "cg/ev/l/ev457クリアGOODＥＤ_l.jpg");
	Move("絵ＥＶ103", 1000, -626, -476, Dxl3, false);
	Fade("絵ＥＶ103", 1000, 1000, null, true);
	Delete("絵ＥＶ102");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/7000060a04">
"I heard your voice&, so I came&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(1200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/7000070a04">
"&.&.&.Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(2000);

	ClearFadeAll(3000, true);

	Wait(1000);

//※次ファイル["dm9999.nss"]

}
