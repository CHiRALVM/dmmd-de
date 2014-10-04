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


scene dm4491.nss_MAIN
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
	$GameName = "dm4492.nss";

}


scene dm4491.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm020a",0,700,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304122_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateTextureSP("絵ＥＶ200", 200, Center, Middle, "cg/ev/ev940歌うクリア.jpg");

	SetVolumeEX("@dm*", 1000, 0, null);

	FadeDelete("上背景", 0, null, true);

//※特殊選択肢の分岐発生

//===========================================
//特殊選択肢を選んでいる場合
//===========================================

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	Delete("絵ＥＶ200");
	FadeDelete("絵フラッシュ白", 100, null, true);

	CreateSE("SE01","se擬音_効果_火花02");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(30);

	CreateColorSPadd("絵フラッシュ赤", 5000, "RED");
	Wait(30);

	CreateSE("SE02","se擬音_効果_火花02");
	MusicStart("SE02",0,600,0,1400,null,false);

	FadeDelete("絵フラッシュ赤", 100, null, true);

	CreateSE("SE03","se擬音_効果_火花02");
	MusicStart("SE03",0,600,0,1800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
While I'm lost in the song&, it suddenly stops&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9100010a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Clear breathes out a painful gasp as he falls to his knees&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1300,null,false);

	CreateTextureEX("絵背景101", 101, -208, -195, "cg/bg/m/bg304122_5_東江タワー東江の間_m.jpg");
	Move("絵背景101", 500, -59, -280, Dxl3, false);
	Fade("絵背景101", 500, 1000, null, true);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9100020a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I immediately rush over to Clear's side&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリアα_通常マスクなし_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9100030b18">
"&.&.&.Hah&, what was all that threatening me for then?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 100, 1000, Dxl1, true);
	Wait(10);
	Shake("絵背景", 300, 50, 50, 0, 0, 500, null, false);
	FadeDelete("絵色白", 100, Dxl1, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 15, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
α&, who was once groveling in pain&, now stands up to move 
to Clear and gives him a brutal kick&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_崩壊_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/9100040a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Clear loses all strength and falls down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw東江_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【東江】
<voice name="東江" class="東江" src="voice/dm44/9100060b02">
"&.&.&.Hey&. Get him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景101", 300, @0, @50, Dxl1, false);
	FadeDelete("絵背景101", 300, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
As Toue speaks&, my arms clinging onto Clear are pulled&.<?>

{	St("C",700, @0,@0,"stクリアα2_通常マスクなし_normal");	FadeSt("C",200,true);}<?>
&.&.&. It's α２.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,900,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9100050a01">
"Stop! Don't touch me!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw東江_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【東江】
<voice name="東江" class="東江" src="voice/dm44/9100070b02">
"Collect Clear as well&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",700, @0,@0,"stクリアα2_通常マスクなし_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm44/9100080b18">
"Yes&, Master&."

{
	DeleteAllSt(200,true);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,900,null,false);

	CreateSE("SE03","se人体_動作_衣擦れ02");
	MusicStart("SE03",0,600,0,1100,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_shout2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/9100090a01">
"No&, Clear! Clear&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1500, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
My voice doesn't reach no matter how loud I yell&.&.&.

α２ pulls me along and takes me to another room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

	Wait(5000);

//※バッドエンドへ
//※次ファイル["dm4492.nss"]

}
