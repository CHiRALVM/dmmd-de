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


scene dm5400.nss_MAIN
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
	$GameName = "dm5400sl.nss";

}


scene dm5400.nss
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

	CreateTextureSP("絵一枚絵", 1000, Center, Middle, "cg/ev/evf02モルヒネ暗闇に佇む.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304041_5_東江タワー研究エリア研究室.jpg");
	CreateColorEX("絵色黒", 5000, "000000");
	SetShade("絵背景", MEDIUM);

	Fade("絵色黒", 0, 100, null, true);

//===========================================
//以下、合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	FadeDelete("上背景", 500, null, true);
}
I lift my head&, putting up with the nausea&, and I see the 
world filled with peoples' glassy eyes&.

{
	CreatePlainSP("絵板写", 5000);
	SetShade("絵背景", DONTCARE);
	FadeDelete("絵板写", 300, null, true);
}

&.&.&.Morphine&.

Their eyes&, looking at me but weren't seeing anything&.

The eyes of humans that have turned into machines that 
only abide orders&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Delete("絵一枚絵");
	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 50, 50, 0, 0, 500, null, false);
	Fade("絵色白", 200, 1000, Dxl2, true);
	Fade("絵色黒", 100, 500, null, true);
	Fade("絵色白", 200, 0, Dxl2, true);

	Wait(500);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 50, 50, 0, 0, 500, null, false);
	Fade("絵色白", 200, 1000, Dxl2, true);
	Fade("絵色黒", 100, 600, null, false);
	Fade("絵色白", 200, 0, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Someone kicks my face&, and my mouth fills with the taste 
of blood&.

Pain running throughout my entire body&, I curl up to 
protect myself&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,500,0,1000,null,false);
	Shake("絵背景", 500, 50, 50, 0, 0, 500, null, false);
	Fade("絵色白", 200, 1000, Dxl2, true);
	Fade("絵色黒", 1000, 700, null, false);
	Fade("絵色白", 200, 0, Dxl2, true);

	Wait(500);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,300,0,1000,null,false);
	Shake("絵背景", 500, 50, 50, 0, 0, 500, null, false);
	Fade("絵色白", 200, 1000, Dxl2, true);
	Fade("絵色黒", 1000, 800, null, false);
	Fade("絵色白", 200, 0, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Taking countless hits&, my consciousness slowly starts to 
fade out&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/0000010b04">
"Is this enough?"

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_think");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/0000020b09">
"Maybe&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/0000030b04">
"What now?"

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_normal2");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/0000040b09">
"Yeah?"

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/0000050b04">
"Aoba-san&."

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_normal");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/0000060b09">
"Oh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5400sl.nss"]

}
