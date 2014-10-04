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


scene dm2630ed.nss_MAIN
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
	#ev263ノイズGOODED=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//★エンドロール
	PreSetRoll(10);
	TheEND(10);

#GDED2=1;//ノイズグッドエンドフラグ取得

}


scene dm2630ed.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm003",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	St("ML",720, @0,@0,"stミオ_通常_shout2");
	St("MR",720, @0,@0,"stノイズ_スーツ_normal");
	FadeAllSt(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 100, -458, -414, "cg/bg/l/bg102011_5_平凡店内_l.jpg");
	Move("絵背景100", 500, -458, -364, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);}
After he said that&, Noiz turned around to me and jumped 
over the counter&.

What? What does he want now?

{
	Fw("fwノイズ_スーツ_smile2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm26/3000010a03">
"Since I have this guy&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 2, 500, null, true);
	Delete("絵板写");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm26/3000020a01">
"!? Uwah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev263ノイズGOODED.jpg");
	CreateTextureEX("絵ＥＶ100", 100, -306, -575, "cg/ev/l/ev263ノイズGOODED_l.jpg");
	Move("絵ＥＶ100", 1000, -613, -334, Dxl3, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
When I try to guess what he's about to do&, Noiz suddenly 
picks me up&.

{
	Fw("fw羽賀_通常_smile");
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm26/3000030b07">
"Young men sure are strong&."

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm26/3000040a06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,600,0,1000,null,false);

	Move("絵ＥＶ100", 500, -613, -165, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm26/3000050a01">
"-Hey&, you! Let me down&, idiot! What're you doing&,
 asshole!?"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm26/3000060a03">
"Don't be so rowdy&. You'll fall&."

{
	Fw("fwミオ_通常_shock");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm26/3000070b11">
"Hey&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm26/3000080a03">
"Sorry&. But you'll be a fine girl someday&."

{
	Fw("fwミオ_通常_normal");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm26/3000090b11">
"&.&.Hmph! I know that even if you didn't tell me! I'm going
 to find a better man than you someday&, too!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm26/3000100a06">
"Aoba&. Your pulse rate has suddenly jumped&. Your heart
 seems as if it's about to burst&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm26/3000110a01">
"You don't have to report on something like that!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
&.&.&.I just can't understand some things&.

That power again&.&.&.

I don't know what's happened to Scrap or that guy&, or if 
he'll ever come out again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ100", 600, -613, -205, Dxl3, false);
	Fade("絵ＥＶ101", 600, 1000, null, true);
	Delete("絵ＥＶ100");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
{
	SetVolumeEX("@dm*", 2000, 0, null);
	SoundPlay("@dmedgood",0,450,false);
}
But I have a feeling it's all right now&.

They're all here for me&.

Noiz told me himself&.
That no matter what happens to me&, he'll definitely think 
of a way&.

That's not a definite promise&, but it is reassuring&.

So&.&.&.

I think it'd be fine if I enjoyed myself a little more&.&.&.? Maybe&.

I can live out my life in these unchanging&, peaceful days&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(3000, true);

	Wait(1000);

//※次ファイル["dm9999.nss"]

}
