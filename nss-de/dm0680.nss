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


scene dm0680.nss_MAIN
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
	#bg402041_1_立ち入り禁止区域工場通路=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0680sl.nss";

}


scene dm0680.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg402041_1_立ち入り禁止区域工場通路");
	FadeBG(0,true);

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm009",0,450,true);

	CreateSE("SE01","se人体_足音_走る03");
//	CreateSE("SE01","se物体_ドア鉄_扉開く強く01");//あきゅん「ＳＥ：se物体_ドア鉄_扉開く強く01」
	MusicStart("SE01",0,700,0,1000,null,false);
	Delete("上背景");

	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/bg/bg402041_1_立ち入り禁止区域工場通路.jpg");
	CreateMaskSetSP("絵マスク中", 500, 0, 0, "ci縦ライン_00_00", true, "ci縦ライン_00_00z");

	CreateTextureSP("絵マスク中/絵画像", 500, -723, -42, "cg/ev/m/evf02モルヒネ暗闇に佇む_m.jpg");

	//DrawDelete("絵色黒", 300, 100, null, "slide_01_00_0", true);
	FadeDelete("絵色黒", 300, null, true);

	Move("絵マスク中/絵画像", 700, -723, -72, Dxl1, false);
	DrawDelete("絵背景", 700, 100, null, "slide_06_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We jump into the passageway&, and three black-clothed men 
are standing there to block the entrance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵マスク中/絵画像");
	Delete("絵マスク中");
	Delete("絵マスク中枠");

	DrawDelete("絵板写", 300, 100, null, "slide_06_00_1", true);

	St("MR",740, @0,@0,"stミンク_通常_serious");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/8000010a05">
"Guess we'll have to deal with this&."

{
	St("ML",740, @0,@+30,"stクリア_通常マスクあり_normal");
	FadeSt("ML",200,true);
//	ClearComicNext(20001,393,-22,26,"ev");
	ClearComicNext(20001,222,2,26,"st");
}
//【クリア】※漫符：飛汗
<voice name="クリア" class="クリア" src="voice/dm06/8000020a04">
"Eek!"

{
	ClearComicNexDelete();
	St("MR",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("MR",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/8000030a05">
"Hey&, go on ahead&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/8000040a01">
"Eh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1200,null,false);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE02","se戦闘_打撃_ヒット低02");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	BGPlainShake(50,300,-40,10,0,0,1000,null,false);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE03","se戦闘_打撃_ヒット低01");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	BGPlainShake(50,300,-40,10,0,0,1000,null,false);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
Mink beats the black-clothed man who runs up to us with 
his fists&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @0,@0,"stミンク_通常_shout");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/8000050a05">
"Hurry it up&. Gas mask guy&, you're over here&."

{
	St("ML",740, @0,@+30,"stクリア_通常マスクあり_normal");
	FadeSt("ML",200,true);
	ClearComicNext(20001, 207, 40, 12,"st");
}
//【クリア】※漫符：ガーン
<voice name="クリア" class="クリア" src="voice/dm06/8000060a04">
"What!? I want to stay together with Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(180,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Mink holds Clear by his neck and squeezes tight&. Mink's 
piercing eyes catch me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0680sl.nss"]

}
