//<continuation number="160">
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


scene dm5411.nss_MAIN
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

	#bg304171_5_東江タワーウイルス自室=true;
	
	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5412ed.nss";

}


scene dm5411.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, -1492, -406, "cg/bg/l/bg304171_5_東江タワーウイルス自室_l.jpg");
	Zoom("絵背景100", 0, 1800, 1800, null, true);
	Request("絵背景100", Smoothing);

	CreateTextureSP("絵背景101", 101, -1492, -406, "cg/bg/l/bg304171_5_東江タワーウイルス自室_l.jpg");
	Zoom("絵背景101", 0, 1800, 1800, null, true);
	Request("絵背景101", Smoothing);
	SetShade("絵背景101", MEDIUM);

	Wait(3000);

	FadeDelete("上背景", 2000, null, true);

	FadeDelete("絵背景101", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.The next time I open my eyes&, I'm laying on a bed 
in an unknown room&.

This is&.&.&.

My hazy vision clears&, and I see Virus's face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100010b04">
"Are you awake?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1100020a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwトリップ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1100030b09">
"Looks like you had a nice rest&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Trip sits on the bedside and strokes my cheek&. Virus 
stands up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100040b04">
"We had actually planned on taking you to Toue first&, but
 we ended up not&, in the end&."

{
	Fw("fwウイルス_通常_think");
}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100050b04">
"When we saw you just writhing around at your wit's end&, we thought of something&."

{
	FwPro("fwウイルス_通常_serious",6000,"fwウイルス_通常_normal");
}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100060b04">
"You're a carp on the chopping board&. And you've struck
 lucky&, heh&."

{
	SoundPlay("@dm006",0,450,true);
}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100070b04">
"We didn't exactly pledge our allegiance to Toue or
 anything&. We just like fun&, amusing things&."

{
	Fw("fwウイルス_通常_serious");
}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100080b04">
"Toue has Sei by his side&. So we thought that we might as
 well have you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwトリップ_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1100090b09">
"Because we both love you so much&, Aoba&."

{
	Fw("fwウイルス_通常_normal");
}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100100b04">
"That's right&. So from now on&, you'll be with us if you
 don't mind&. We'll treasure you for a lifetime&, Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1100110a01">
"&.&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
&.&.&.I have to get away&.
My instincts are screaming at me&, telling me to escape&.

Virus is staring at me with a terribly calm face&, as if he was looking at something he adored&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
&.&.&.They've gone insane&.

If I'm with them&, who knows what'll happen to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100120b04">
"It's all right for you to be frightened&. Humans are
 especially sensitive to changes in their environment&."

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100130b04">
"Both your body and soul will become used to us
 eventually&."

{
	Fw("fwトリップ_通常_smile");
}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1100140b09">
"We'll take our time&."

{
	Fw("fwウイルス_通常_fake");
}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1100150b04">
"Yeah&. So for now&.&.&. go to sleep&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,600,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 20, -10, 10, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1100160a01">
"-! &.&.&.Ugh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(5000);

//※次ファイル["dm5412ed.nss"]

}
