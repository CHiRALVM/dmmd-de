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


scene dm3780.nss_MAIN
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
	#bg304012_1_東江タワー全景崩壊後空=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3810ed.nss";
//	$GameName = "dm3790.nss";

}


scene dm3780.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm001",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	CreateTextureSP("絵背景100", 100, -705, 0, "cg/bg/l/bg101031_1_旧住民区通り裏路地紅時雨_l.jpg");

	Delete("上背景");

	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,600,0,1000,null,false);

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I leave Heibon and walk home&.

The scenery is still the same around here&.
But I think the atmosphere has changed&.

When Platinum Jail was prospering&, somehow the Old 
Resident District felt like it had given up&.

But today everyone is facing forward and giving it their 
all&.

I can feel it in my skin&, and my feet start to feel heavy 
like I'm having hallucinations&.

The surroundings steadily change&.&.&.

Am I actually moving forward?

I've been in the same place the entire time&, stepping 
along&, alone&.

I feel like time has stopped for me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.Ever since then&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蒼葉、立ち止まる
	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/bg/bg304022_5_東江タワー前通り崩壊中.jpg");

	EfRecoIn2(500);

	Wait(1500);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);

	Wait(500);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,600,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
&.&.&.Is it really all right like this?

Not moving forward&.

Not facing what I should be?

Can I do anything? Can I&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	Wait(800);

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1001", 1001, Center, Middle, "cg/ev/m/ev364ミンク捕縛a_m.jpg");
	Move("回想1001", 0, @100, @0, Dxl3, true);

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);

	Delete("絵色黒");

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 500, null, true);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I wasn't able to save Mink in Scrap&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("回想1002", 1002, Center, Middle, "cg/bg/bg204011_3_暴露ミンク故郷草原炎上.jpg");
	Fade("回想1002", 500, 1000, null, true);
	Delete("回想1001");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Because I didn't wish for him to keep living&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	Delete("回想*");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
&.&.&.However&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(300);

//※回想的扱い（dm3270.nss）

	EfRecoIn1(10000,200);

	CreateTextureSP("回想1000", 1000, Center, Middle, "cg/bg/bg302051_5_グリッターエントランス.jpg");

	St("C",1001, @0,@0,"fuミンク_通常正面_angry2");
	FadeSt("C",0,true);

	Delete("絵色黒");

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/7000241a05">
"Isn't it yourself who decides what you'll do? Or maybe
 you're some idiot who wants someone else to decide for
 them?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("回想*");
	DeleteAllSt(0,true);

	EfRecoIn2(400);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
&.&.&.That's right&.

I decide for myself what I'll do&.

So I left that tower without going back for Mink myself&.

I thought that was the road that would take me somewhere&.

Back then&.&.&.

When he was looking out the window to Platinum Jail&.

I wonder what happened after I saw that look in his eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵ＥＶ101", 101, 154, 111, "cg/ev/l/ev343ミンク、頭を撫でる_l.jpg");
	Zoom("絵ＥＶ101", 0, 1200, 1200, null, true);
	Request("絵ＥＶ101", Smoothing);

	CreateTextureSP("絵ＥＶ102", 102, -30, -47, "cg/ev/l/ev343ミンク、頭を撫でる_l.jpg");

	EfRecoIn2(500);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018a]
Maybe it was his dearly missed homeland&.

Or maybe&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ101", 1000, 50, 111, Dxl1, false);
	FadeDelete("絵ＥＶ102", 1000, null, true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018b]
Someway or another&, I think I understand now&.

I think I understand Mink's feelings now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");
	Delete("絵ＥＶ*");

	EfRecoIn2(400);

	Wait(800);

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/9000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I always thought I wanted to know more about Mink&.

And that still hasn't changed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	CreateTextureSP("回想背景53", 1053, Center, Middle, "cg/ev/ev326蒼葉の胸倉を掴むミンク.jpg");
	CreateTextureSP("回想背景52", 1052, -607, -15, "cg/ev/ev920ミンク、バイク疾走.jpg");
	St("C",1051, @0,@0,"buミンク_通常正面_serious");
	FadeSt("C",0,true);
	CreateTextureSP("回想背景50", 1050, Center, Middle, "cg/bg/bg304131_5_東江タワー東江の間前廊下.jpg");

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵色黒", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I want to know what Mink was thinking&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	Delete("回想背景53");

	FadeDelete("絵色黒", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
And&.&.&. what he thought about me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	Delete("回想背景52");

	Wait(500);

	FadeDelete("絵色黒", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
I have to pursue him to know the answer&.

I won't accept it until I have solid proof that "I could 
never come to understand Mink"&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Delete("回想*");
	DeleteSt("C", 0,true);

	FadeDelete("絵色黒", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Who decides that is me&.

&.&.&.So there's only one answer&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureSPadd("絵背景202", 202, -1022, -162, "cg/ev/l/evf09トリ空を飛ぶ_l.jpg");
	Zoom("絵背景202", 0, 2000, 2000, null, true);
	Request("絵背景202", Smoothing);
	SetShade("絵背景202", HEAVY);

	CreateTextureSP("絵背景201", 201, -281, -98, "cg/bg/l/bg101031_1_旧住民区通り裏路地紅時雨_l.jpg");
	CreateTextureSP("絵背景200", 200, -104, -719, "cg/bg/m/bg304012_1_東江タワー全景崩壊後空_m.jpg");

	Move("絵背景201", 500, -767, 0, Dxl1, false);
	FadeDelete("絵背景201", 500, null, false);

	Move("絵背景200", 1000, -511, -205, Dxl1, false);

	FadeDelete("絵背景202", 500, null, false);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 500, 1000, null, true);
	FadeDelete("絵色白", 100, null, false);

	CreateSE("SE01","se動物_動作_羽ばたき去る01");
	MusicStart("SE01",0,500,0,1100,null,false);
	Wait(500);
	SetVolumeEX("SE*", 3000, 0, null);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Back there&, a huge bird was flying overhead&.

I looked up and came to a new&, clear decision&.
That Mink was alive somewhere under this sky&.

{
	SetVolumeEX("@dm*", 5000, 0, null);
}
So&.&.&.<k> I will head there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※場面転換

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 2000, 1000, null, true);

	OnBG(10,"bg104001_1_蒼葉宅前通り");
	FadeBG(0,true);
	Delete("絵背景*");

	Wait(1000);

	FadeDelete("絵色黒", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
When I came home I told Granny about all of these feelings&.

At first she was surprised&, but didn't object&.

She wore a face that told me that she understood me&.

And muttered "Just like your parents&, huh&."

Granny said that all of my savings from my part-time job 
could be used for travel expenses&.

I promised to visit and call all the time&, and then left 
home&.

&.&.&.So I could go and see Mink&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(3000, true);

	Wait(3000);

}
