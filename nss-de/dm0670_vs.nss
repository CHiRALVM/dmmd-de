//<continuation number="50">
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


scene dm0670_vs.nss_MAIN
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
	$GameName = "dm0680.nss";

}


scene dm0670_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg402031_1_立ち入り禁止区域工場部屋01");
	FadeBG(0,true);

	CreateTextureSP("絵背景下", 1900, Center, Middle, "cg/bg/bg402031_1_立ち入り禁止区域工場部屋01.jpg");

	CreateTextureSP("絵マスク枠", 2002, 0, 0, "cg/mask/ciスラッシュ_05_00z.png");

	CreateMask("絵マスク左", 2000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", true);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureSP("絵マスク左/絵背景", 2000, Center, Middle, "cg/bg/bg402031_1_立ち入り禁止区域工場部屋01.jpg");
	Zoom("絵マスク左/絵背景", 0, 1500, 1500, null, true);
	Request("絵マスク左/絵背景", Smoothing);
	SetShade("絵マスク左/絵背景", MEDIUM);

	CreateTextureSP("絵マスク左/絵st", 2001, 0, InBottom, "cg/bu/buクリア_正面マスクあり_normal.png");
	Move("絵マスク左/絵背景", 0, 251, -30, null, true);
	Move("絵マスク左/絵st", 0, 51, -32, null, true);

	CreateMask("絵マスク右", 1500, 0, 0, "cg/mask/ciスラッシュ_05_01.png", true);
	SetAlias("絵マスク右","絵マスク右");
	CreateTextureSP("絵マスク右/絵背景", 1500, Center, Middle, "cg/bg/bg402031_1_立ち入り禁止区域工場部屋01.jpg");
	Zoom("絵マスク右/絵背景", 0, 1500, 1500, null, true);
	Request("絵マスク右/絵背景", Smoothing);
	SetShade("絵マスク右/絵背景", MEDIUM);

	CreateTextureSP("絵マスク右/絵st", 1501, 0, InBottom, "cg/bu/buミンク_通常_angry2.png");
	Move("絵マスク右/絵背景", 0, -249, 113, null, true);
	Move("絵マスク右/絵st", 0, 507, -85, null, true);

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm009",0,450,true);


//==============================================
//※以降、合流
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	DrawDelete("上背景", 300, 100, null, "blind_02_00_1", true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/7000010a04">
"Master-! I hear more sounds coming from the inside!
 They're gathering!"

{	Move("絵マスク右/絵st", 300, 457, -85, Dxl1, false);
	DrawDelete("絵背景下", 300, 100, null, "blind_02_00_1", true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/7000020a05">
"So this was a decoy&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_一歩01");//あきゅん「ＳＥ：se人体_足音_走る01」
	CreatePlainSP("絵板写", 5000);
	Delete("絵マスク左/絵st");
	Delete("絵マスク左/絵背景");
	Delete("絵マスク左");
	Delete("絵マスク枠");
	Delete("絵マスク右/絵st");
	Delete("絵マスク右/絵背景");
	Delete("絵マスク右");

	OnBG(10,"bg402031_1_立ち入り禁止区域工場部屋01");
	FadeBG(0,true);

	MusicStart("SE01",0,700,0,800,null,false);
	DrawDelete("絵板写", 300, 100, null, "slide_03_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Mink quickly starts running into the interior of the 
factory&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_戦闘太刀_shout");
	St("C",740, @0,@0,"st紅雀_戦闘太刀_pinch");
	FadeSt("C",200,true);

	FadeStPro("C", 1400, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/7000030a02">
"Hey&, don't just run off&.&.&. Tch!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット複数01");//あきゅん「ＳＥ：se戦闘_打撃_ヒット複数01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
Koujaku leaves to go after Mink and the black-clothed men  who were just downed begin to rise up like zombies&.

While yelling&, Koujaku mows them down with the back of his sword&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st紅雀_戦闘太刀_shout");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//【紅雀】 
<voice name="紅雀" class="紅雀" src="voice/dm06/7000040a02">
"Plucking the leaves won't kill the tree! I'll do something about this so you head in first!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/7000050a01">
"&.&.&.Got it! Thanks a lot!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
This isn't the time to hesitate&. 

I run with Clear and Mink to the inner parts of the 
factory&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「演出：扉部分のアップ絵」
	CreateTextureEX("絵背景", 100, -930, Middle, "cg/bg/l/bg402031_1_立ち入り禁止区域工場部屋01_l.jpg");
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I can see the front passageway&.&.&.
Is this the entrance?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Zoom("@OnBG*", 1000, 3000, 3000, null, false);
	Fade("絵色黒", 300, 1000, null, true);

//※次ファイル["dm0680.nss"]

}
