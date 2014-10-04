//<continuation number="40">
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


scene dm5402.nss_MAIN
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
	if($ウイトリ選択肢>1){	$GameName = "dm5411.nss";
	}else {		$GameName = "dm5420.nss";
	}

}


scene dm5402.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");

	St("L",720, @0,@0,"buウイルス_通常バッヂ_normal");
	St("R",700, @0,@0,"buトリップ_通常バッヂ_normal");
	FadeAllSt(0,true);

	Move("絵背景", 0, @0, @-20, null, true);
	Move("@StNameL/L*", 0, @0, @-40, null, true);
	Move("@StNameR/R*", 0, @0, @-40, null, true);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 0, 400, null, true);

//===========================================
//「それでも諦めない」の場合
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	SetVolumeEX("@dm*", 300, 0, null);
	Wait(300);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,800,null,false);
	Move("絵背景", 500, @0, @20, Dxl1, false);
	Move("@StNameL/L*", 500, @0, @40, Dxl1, false);
	Move("@StNameR/R*", 500, @0, @40, Dxl1, false);
	FadeDelete("上背景", 500, null, true);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,800,null,false);
	BGPlainShake(1000,300,0,8,0,0,1000,Dxl1,true);

	Fw("fw蒼葉_通常_hard2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/0200010a01">
"&.&.This- isn't funny&.&.&. Doing- this&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I muster my strength and bring myself up with my shivering arms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",720, @0,@0,"buウイルス_通常バッヂ_shock");
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/0200020b04">
"You really don't give up&. Just as I'd expect of you&,
 Aoba-san&."

{	St("R",700, @0,@0,"buトリップ_通常バッヂ_smile");
	FadeSt("R",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/0200030b09">
"You're right&."

{	St("L",720, @0,@0,"buウイルス_通常バッヂ_normal");
	FadeSt("L",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/0200040b04">
"We'll make sure of how long you can keep holding on&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorEX("絵色黒弐", 5000, "000000");
	Move("絵背景", 1500, @0, @-20, null, false);
	Move("@StNameL/L*", 1500, @0, @-40, null, false);
	Move("@StNameR/R*", 1500, @0, @-40, null, false);
	Fade("絵色黒弐", 1500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
&.&.&.Shit&.
Is this really the end of it&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

	ClearFadeAll(1000, true);
	DeleteAllSt(0,true);

//※次ファイル["dm5411.nss"]
//※次ファイル["dm5420.nss"]

}
