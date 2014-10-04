//<continuation number="80">
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


scene dm5392.nss_MAIN
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
	$GameName = "dm5400.nss";

}


scene dm5392.nss
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

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");

	FadeDelete("上背景", 0, null, true);

//===========================================
//「力の衝動を抑える」の場合
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
So I guess I have no other choice but to use it&.
&.&.&.This power&.

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,1100,null,false);

	Move("絵背景", 300, @0, @-50, Dxl1, false);
	FadeDelete("絵背景", 300, null, true);
}
I raise my face&, focusing&.
<k>&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 12000, "000000");
	Fade("絵色黒", 300, 1000, null, true);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");

	TemptationAobaOut(200,true);
	TemptationDelete("@絵演黒蒼葉誘惑黒隠");

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
&.&.&.I knew it&, I can't&.

If I use it&, then "he" will&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//ズームでトリップぐわっと表示
	CreateTextureSP("絵立絵", 200, Center, 0, "cg/bu/buトリップ_通常バッヂ_normal.png");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304041_5_東江タワー研究エリア研究室.jpg");

	Request("絵立絵", Smoothing);
	SetVertex("絵立絵", 525, 200);
	SetShade("絵背景", SEMIHEAVY);

	Zoom("絵立絵", 300, 2000, 2000, Axl3, false);
	Zoom("絵背景", 330, 1400, 1400, Axl3, false);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(150);

	FadeDelete("絵色黒", 300, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
In that momentary pause&.&.&.
I just noticed that Trip had made his way up to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頬を殴られる
	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵フラッシュ白", 7000, "FFFFFF");
	Fade("絵フラッシュ白", 150, 1000, Dxl3, true);

	Delete("絵背景");
	Delete("絵立絵");
	Wait(100);
	CreatePlainSP("絵板写", 100);
	Shake("絵板写", 500, 50, 0, 0, 0, 500, Dxl1, false);
	FadeDelete("絵フラッシュ白", 100, Null,true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9200010a01">
"-!"

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/9200020b04">
"What is it?  Aoba-san&. Are you lost? You seem distracted&."

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/9200030b04">
"If you're a bit lost&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/9200040b09">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");

	DeleteSt("C", 0,true);

	St("C",700, @0,@0,"buトリップ_通常バッヂ_normal2");
	FadeSt("C",0,true);

	DrawDelete("絵黒幕", 300, 100, Dxl1, "slide_01_01_0", true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9200050a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵フラッシュ白", 7000, "FFFFFF");
	Fade("絵フラッシュ白", 150, 1000, Dxl3, true);

	Delete("絵背景");
	DeleteSt("C", 0,true);
	Wait(30);

	FadeDelete("絵フラッシュ白", 100, Dxl3, true);

	BGPlainShake(100,300,0,30,0,0,1000,Axl1,false);

//※みぞおちを殴られる

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9200060a01">
"Gah&.&.&.!"

{	St("C",700, @0,@0,"stトリップ_通常バッヂ_smile");
	FadeSt("C",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/9200070b09">
"You'll just be a punching bag&, you know?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_1.png", true);

	DeleteSt("C", 0,true);

	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/l/bg304041_5_東江タワー研究エリア研究室_l.jpg");

	Move("絵背景", 200, @0, @-500, Dxl2, false);
	DrawDelete("絵黒幕", 200, 100, Dxl1, "slide_02_01_0", true);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景", 300, 0, 50, 0, 0, 500, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Trip punches me in the pit of my stomach and I fall to me 
knees&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵フラッシュ白", 7000, "FFFFFF");
	Fade("絵フラッシュ白", 150, 1000, Dxl3, true);

	Wait(30);

	FadeDelete("絵フラッシュ白", 100, Dxl3, true);

	Shake("絵背景", 500, 20, 0, 0, 0, 500, null, false);

//※背中を蹴られる
	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/9200080a01">
"Uck&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Someone kicks my back too&, and I shamefully tumble down to the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5400.nss"]

}
