//<continuation number="120">
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


scene dm5382.nss_MAIN
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
	$GameName = "dm5390.nss";

}


scene dm5382.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	St("MR",720, @0,@0,"stトリップ_通常バッヂ_smile");
	FadeAllSt(0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//「困惑する」の場合
//===========================================

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8200010a01">
"Something amusing&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
What's amusing?

This is?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8200020a01">
"&.&.&.You're insane&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Muttering&, Virus raises his eyebrows&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8200030b04">
"That's regrettable&. Right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",700, @0,@0,"stトリップ_通常バッヂ_normal");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/8200040b09">
"Right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Trip and Virus shrug their shoulders&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8200050b04">
"It sure is quite a sight to be called insane by someone
 who can't even tell the difference between the normal
 people and the mad ones&, isn't it?"

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8200060b04">
"Looking at us&, you'd just see normal people&."

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8200070b04">
"And then there's you&, Aoba-san&. How can you be sure that
 other people don't think you're the mad one? Do you have
 proof that you're not?"

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8200080b04">
"I don't doubt at all that I conduct myself in a normal
 way&, so shouldn't I assume that I'm not mad?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8200090a01">
"&.&.&.!"

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);
	FadeStPro("ML", 4450, 180);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8200100b04">
"Now&, let's wrap all of this up&. &.&.&.Do it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	SetVolumeEX("@dm*", 100, 0, null);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色白", 0, 1000, null, true);
	Wait(30);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");
	Shake("絵背景", 300, 50, 50, 0, 0, 500, null, false);

	Fade("絵色白", 200, 0, null, true);

	Wait(300);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 200, 0, null, true);

	SoundPlay("@dm007a",0,450,true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8200110a01">
"Guh!"

{	Fw("fwウイルス_通常_serious");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8200120b04">
"Just enough so that he doesn't die&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5390.nss"]

}
