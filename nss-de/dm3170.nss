//<continuation number="60">
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


scene dm3170.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3180.nss";

	//▼頭痛レベル設定
	$HALevel=2;

}


scene dm3170.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateTextureSP("絵霞", 100, Center, Middle, "cg/bg/bg302051_5_グリッターエントランス.jpg");
	CreateColorSPmul("絵薄黒", 3000, "000000");
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 0, 1000, null, true);
	Fade("絵薄黒", 0, 500, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,600,0,800,null,false);

	SetShade("絵霞", MEDIUM);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I hear the sound of something rustling&, and then feel my 
body being pulled&.&.&.

And suddenly&, I'm thrown out onto a solid floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※どさっと床に倒れこむ蒼葉
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/7000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawTransition("絵色黒", 1000, 1000, 500, 100, Dxl1, "cg/data/slide_05_00_0.png", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I open my eyes&, thinking I would be at the club&, but what 
I see is completely different&.

Where&.&.&. is this?

{
	DrawTransition("絵色黒", 500, 500, 800, 100, Dxl1, "cg/data/slide_05_00_0.png", true);
}

While lightly thinking on it&, I naturally close my eyelids&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawTransition("絵色黒", 500, 800, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(800);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 150, 1000, Dxl1, true);
	Delete("絵霞");
	Delete("絵薄黒");
	Delete("絵色黒");
	Wait(30);
	FadeDelete("絵色白", 150, Dxl1, true);

//※バキッと顔を殴られる

//	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/7000020a01">
"&.&.&.Ow&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
My eyes spring open as a violent pain pierces my cheek&.

This&.&.&. this is Glitter&.

Wasn't I in that club with the people getting high on 
lights&.&.&.?

When did I get back here?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵霞", 105, -513, -115, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	CreateTextureSP("絵背景", 100, -513, -115, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");

	SetShade("絵霞", MEDIUM);

	St("C",740, @0,@0,"buミンク_通常_normal");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 0, @0, @-40, null, true);

	Move("絵霞", 1000, @0, @30, Dxl1, false);
	Move("@StNameC/C*", 1000, @0, @40, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I slowly look around and soon find Mink staring down at 
me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	HAFade(2000, 0,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1200,null,false);

	CreatePlainSP("絵板写", 990);

	Delete("絵霞");
	DeleteAllSt(0,true);
	Delete("絵背景");

	CreateTextureSP("絵背景100", 100, -208, -473, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Move("絵背景100", 500, @0, @-100, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/7000030a01">
"&.&.&.Ouch!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
A sharp headache hits me as I try to get myself up&. It 
feels as if I'm being pricked by needles&.

My cheek hurts from being hit&, and my body hurts all over&, 
but why&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果画像", 1050, Center, Middle, "cg/ev/ev315蒼葉発情状態.jpg");

	EfRecoIn2(500);

	Wait(500);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果画像", 1050, -121, -83, "cg/ev/l/ev316ミンク駅弁前戯_l.jpg");

	EfRecoIn2(500);

	Wait(500);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果画像", 1050, -801, -38, "cg/ev/l/ev316ミンク駅弁挿入_l.jpg");

	EfRecoIn2(500);

	Wait(500);
	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(800);


	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
&.&.&.&.&.

Was it a dream?

&.&.&.No&, it wasn't&.

At that club with Mink&, I&.&.&.

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/7000040a01">
"&.&.&.&.&."

{
	Fw("fwミンク_通常_serious");
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/7000050a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
The memory is so unclear that it doesn't seem real&.&.&.

The fact that this heavy feeling of pain looms over me 
tells me it's not a dream&.

And I even&.&.&.
Said some terrible things back there&.&.&.

&.&.&.No&. I don't want to remember&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("絵背景100", 500, @0, @30, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
A spur of shyness makes me want to forget everything&, and 
I bear with the pain in the upper half of my body as I get up&.

I timidly look at Mink's face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常正面_serious");
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
When our eyes meet&, I immediately turn mine away&.&.&. I 
feel uncomfortable&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 5000);
	CreatePlainSP("絵霞", 1000);
	CreateColorEX("絵色黒", 1500, "000000");
	Fade("絵色黒", 0, 300, null, true);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度
	CreateTextureSP("絵マスク中/絵画像", 2000, Center, Middle, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	CreateTextureSP("絵マスク中/絵立絵", 2005, Center, InBottom, "cg/fu/fuミンク_通常正面_serious.png");

	SetShade("絵霞", MEDIUM);

	FadeDelete("絵板写", 100, null, false);

	Move("絵マスク中/絵画像", 1000, @0, @20, Dxl1, false);
	Move("絵マスク中/絵立*", 1000, @0, @40, Dxl1, false);
	OpenTateMask("絵マスク中",200, 1300,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
Is it just me&, or do I look at Mink with different eyes 
now&.&.&.?

&.&.&.In wonder?
Or suspicion?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Move("絵マスク中/絵画像", 1000, @0, @-20, Dxl1, false);
	Move("絵マスク中/絵立*", 1000, @0, @-40, Dxl1, false);
	CloseTateMask("絵マスク中",0,Dxl3,false);//ナット名、所要時間、テンポ、待ち

	Delete("絵色黒");
	Delete("絵霞");
	DeleteSt("C", 0,true);

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
&.&.&.No way&. That can't be&.

He should scorn me&.
Because I've shown him how foolish someone can be&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I silently stare at the floor&, and Mink just turns around 
and goes up the stairs without a word&.

{
	CreateSE("SE01","se物体_ドア木_扉開く01");
	MusicStart("SE01",0,400,0,1000,null,false);
	Wait(1000);
}
I can hear the sound of him closing a bedroom door&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/7000060a01">
"&.&.&.Shit!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3180.nss"]

}
