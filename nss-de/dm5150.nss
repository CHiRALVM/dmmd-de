//<continuation number="110">
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


scene dm5150.nss_MAIN
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
	#ev515うずくまるセイ=true;
	#ev515うずくまるセイa=true;
	#bg301031_5_プラチナジェイル通り路地01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5150sl.nss";

}


scene dm5150.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	Delete("上背景");

	SetVolumeEX("@dm*", 3000, 0, null);

	DrawDelete("絵色黒", 250, 100, Dxl1, "slide_01_01_0", true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The atmosphere is a little different in this alley&.

I don't know how I could explain it other than a sense of 
deja vu&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The area is dim and filled with trash&.

It's a lonely place&, as if completely forgotten by the 
guests walking down Main Street&.

So Platinum Jail has areas like this too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_物_漁る01");
	MusicStart("SE01",0,500,0,700,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The odd display left me staring&, but then a sound came 
from a heap of trash&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -514, -524, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");
	Move("絵背景100", 500, -514, -574, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/5000010a01">
"Ren&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("絵ＥＶ200", 200, Center, Middle, "cg/ev/ev515うずくまるセイ.jpg");
	Fade("絵ＥＶ200", 1500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
A puff of blue fur coming out of the dark&.&.&.

No&, it's a person&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/5000020a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
A person in this kind of place&.&.&.

No way&.&.&. They aren't dead&, are they?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵ＥＶ1500", 1500, 0, -185, "cg/ev/m/ev515うずくまるセイa_m.jpg");
	CreateTextureSP("絵ＥＶ1501", 1501, 0, -185, "cg/ev/m/ev515うずくまるセイ_m.jpg");

	Move("絵ＥＶ15*", 1500, @0, @-80, Dxl1, false);
	FadeDelete("絵板写", 1500, null, true);
	Delete("絵ＥＶ200");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.Maybe a doll?
The person's limbs are so thin and white&, so I don't know&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/5000030a01">
"Um&.&.&. Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1000);

	FadeDelete("絵ＥＶ1501", 1500, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
When I speak out&, the person slowly raises their head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ぱちん、と静電気みたいな音と演出

	CreateSE("SE01","se擬音_効果_火花01");
	MusicStart("SE01",0,700,0,1500,null,false);
	SetVolumeEX("SE*", 500, 0, null);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(10);
	FadeDelete("絵フラッシュ白", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.What?

When our eyes met&, it felt like a bolt of electricity 
surged through my head&.

What was that all about?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ1502", 1502, -234, -357, "cg/ev/l/ev515うずくまるセイa_l.jpg");
	Move("絵ＥＶ1502", 1500, -384, -357, Dxl1, false);
	Fade("絵ＥＶ1502", 1500, 1000, null, true);
	Delete("絵ＥＶ1501");
	Delete("絵ＥＶ1500");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
They're looking at me&.

&.&.&.Are they&, actually?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Their gaze isn't focusing&, just staring off into space&.

It's something&.&.&. but I can't remember what&.

I feel like I've seen them somewhere before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ1504", 1504, -228, -207, "cg/ev/l/ev515うずくまるセイa_l.jpg");
	Request("絵ＥＶ1504", Smoothing);
	SetShade("絵ＥＶ1504", LIGHT);

	CreateTextureEX("絵ＥＶ1503", 1503, -228, -207, "cg/ev/l/ev515うずくまるセイa_l.jpg");
	Request("絵ＥＶ1503", Smoothing);
	Zoom("絵ＥＶ1503", 0, 2000, 2000, null, true);
	Zoom("絵ＥＶ1504", 0, 2000, 2000, null, true);

	Fade("絵ＥＶ1503", 5000, 1000, null, false);
	Fade("絵ＥＶ1504", 10000, 500, null, false);
	MoveFTP3("@絵ＥＶ1504",18000,15,5);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Not when I look at their face&.&.&. but more like their eyes&.

It's a strange sensation&.

I wonder if we've passed by each other once&.

No&, that can't be it&.

I don't think I've ever seen them or met them&.&.&.

But something&.&.&.

More like&.&.&.

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	SetVolumeEX("@dm*", 1000, 0, null);

	Sei(2000,1500,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(10);
	Delete("絵ＥＶ150*");
	MoveFTP1stop();
	FadeDelete("絵フラッシュ白", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/5000040a01">
"-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
A current like thunder ran through me&, and I jumped back a step&.

&.&.&.What just happened?

I dozed out for a second and&.&.&.

And I blurred out when that impulse hit&, and&.&.&.

&.&.&.Huh?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：ここでEVの背景だけもらえますでしょうか？

	CreateTextureEX("絵背景200", 200, -1500, -844, "cg/ev/l/ev515うずくまるセイa_l.jpg");
	Zoom("絵背景200", 0, 1500, 1500, null, true);
	Request("絵背景200", Smoothing);
	Move("絵背景200", 500, -1500, -1059, Dxl1, false);
	Fade("絵背景200", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
&.&.&.They're not here&.

That person that was just here is now gone&. 
{
	Move("絵背景200", 500, -1500,  -844, Dxl3, false);
	FadeDelete("絵背景200", 500, null, true);
}
Did they just disappear? 
There's no way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I only took my eyes off them for a second&. 
I didn't think anyone could disappear that quickly&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/5000050a01">
"What just happened&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se動物_足音_走る蓮01");
	MusicStart("SE01",1500,600,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
While dumbfounded&, I hear the sounds of light footsteps&.&.&.

And a bundle of blue appears from inside an alley&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm004",0,450,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/5000060a01">
"Ren!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_足音_走る蓮01");
	MusicStart("SE01",0,700,0,1200,null,false);

	DeleteFw();
	Move("絵背景100", 500, -514, -524, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
Ren runs up to me with as blank an expression as a dog can get&, and sits down near me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 500, 0, null);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/5000070a01">
"You&.&.&. Where were you going!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/5000080a06">
"Nowhere&.&.&. I didn't have anywhere in mind&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/5000090a01">
"Wha? What the hell? What're you talking about?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/5000100a06">
"If I were to say it&.&.&. I just felt like it&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/5000110a01">
"Felt like it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
I'm completely relieved that I found Ren&, but that feeling soon turns into a complicated one&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5150sl.nss"]

}
