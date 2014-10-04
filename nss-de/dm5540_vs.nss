//<continuation number="310">
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


scene dm5540_vs.nss_MAIN
{
$TEXTBOX_TYPE="ライム";
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();

		//ライムエフェクトセット
		CreateTxtinEffect("蓮",10000);
		CreateTxtinEffect("ノイズ",10000);

		call_scene $MainGameName;
		GameMainSet2();


	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev950蓮バトル汎用攻撃=true;
	#ev950蓮バトル汎用突進=true;
	#ev950蓮バトル汎用防御=true;
	#ev950蓮の剣砲構え=true;

	EffectTxtinDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5550.nss";

}


scene dm5540_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

//	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/l/bg201011_0_ライムパブリックフィールド_l.jpg");
//	WaitKey();
//	CreateMovieSP("絵動画", 1000, 0, InTop, true, true, "dx/al_下枠_6&.avi");
//	CreateMovieSP("絵動画2", 1000, 0, InBottom, true, true, "dx/al_下枠_7&.avi");
//	CreateMovie("絵動画",300,Center,Middle,true,true,"dx/al_上枠&.mpg");
//	Fade("絵動画", 0, 1000, null, true);
//	Request("絵動画", Start);
//	WaitKey();


	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg201011_0_ライムパブリックフィールド");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/l/bg201011_0_ライムパブリックフィールド_l.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 800, 800, null, true);
	CreateTextureSP("絵背景EF", 100, Center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	Zoom("絵背景EF", 0, 2030, 2030, null, true);
	DrawEffect("絵背景EF", 0, "Ripple", 200, 200, null);
	Fade("絵背景EF", 0, 1000, null, true);
	Fade("絵背景", 0, 500, null, true);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("上背景");
	Zoom("絵背景", 4500, 500, 500, Dxl1, false);
	Zoom("絵背景EF", 4500, 1000, 1000, Dxl1, false);
	FadeDelete("絵色白", 2000, null, true);

	Wait(1000);
	Fade("絵背景", 1500, 1000, null, true);
	Delete("絵背景EF");

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/4000010a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm010",0,450,true);

	St("ML",740, @0,@0,"st紅雀_通常太刀なし_normal2");
	FadeSt("ML",200,false);
	St("MR",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/4000020a02">
"Aoba!"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm55/4000030a04">
"Master!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
When I open my eyes&, I see Clear and Koujaku's worried 
faces&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm55/4000040a03">
"I finally got feedback&. Barely made it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Noiz mumbles things here and there while typing on his 
keyboard&.

All of his rabbit Allmates are scattered around him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/4000050a01">
"This&.&.&."

{	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm55/4000060a03">
"I've got my hands full&. Can't help it&."

{	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st紅雀_通常太刀なし_pride");
	FadeSt("C",180,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/4000070a02">
"We can show off a little since you're back now&, can't we?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_剣撃_地面に刺す01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Koujaku smiles boldly as he thrusts out his long sword&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/4000080a02">
"Hey! Aoba's back!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Mink&, who's fighting the guards and the Allmates&, looks 
back over his shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_戦闘太刀_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/4000090a02">
"All right&, let's stir some shit up!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Koujaku rises up&, running over to Mink with his large 
sword in his hands&.

Speaking of which&, where's Ren?

He should've come back with me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu蓮_通常マントなし_normal");
	FadeSt("C",200,true);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/4000100a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Ren was standing behind me&.

He must still have some bugs left in his system&, but his 
gaze is still steadily fixed on me&.

When I look back&, a smile instinctively grows on my face&.

So it's all back to normal&.

Ren is looking at me like he always does&. Just thinking 
about it makes me feel relieved&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 5000);
	St("ML",740, @0,@0,"st蓮_通常マントなし_normal");
	St("MR",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("ML",0,true);
	FadeSt("MR",0,true);
	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I get up&, and look at Ren and Clear&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/4000110a01">
"We're going too&. Let's clean this up in one go&."

{
	St("ML",740, @0,@0,"st蓮_通常マントなし_normal2");
	FadeSt("ML",200,true);
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/4000120a06">
"Right&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm55/4000130a04">
"Yes&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
We started to run towards Mink and Koujaku&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(32);
	CreateTextureEX("絵敵", 100, 0, -50, "cg/ev/m/ev550バグ状態の蓮_m.jpg");

	CreateTextureEX("絵背景", 100, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	SetShade("絵背景", HEAVY);

	CreateTextureEX("紅雀", 100, 320, Middle, "cg/bu/bu紅雀_戦闘太刀_shout.png");
	CreateTextureEX("ミンク", 100, -120, Middle, "cg/bu/buミンク_戦闘_normal.png");

	Zoom("紅雀", 0, 950, 950, null, true);
	Zoom("ミンク", 0, 950, 950, null, true);

	Move("絵敵", 600, -500, @0, AxlDxl, false);
	Fade("絵敵", 100, 1000, null, true);
	Wait(300);
	FadeDelete("絵敵", 200, null, false);

	Zoom("絵背景", 200, 1300, 1300, Dxl1, false);
	Fade("絵背景", 150, 1000, null, false);

	Zoom("紅雀", 300, 1000, 1000, Dxl1, false);
	Fade("紅雀", 200, 1000, null, true);



//{	St("C",740, @0,@0,"st紅雀_戦闘太刀_shout");
//	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/4000140a02">
"Ohhhryahhhh!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(32);

	CreateTextureEXadd("絵背景EF01", 3000, -150, -600, "cg/ef/efx01剣閃02.jpg");
	Rotate("絵背景EF01", 0, @0, @0, 47, null,true);
	Zoom("絵背景EF01", 0, 2000, 2000, null, true);
	CreateTextureEX("絵背景EF02", 500, center, middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	SetBlur("絵背景EF02", true, 2, 100, 500, false);

	CreateSE("SE01","se戦闘_剣撃_風切り高01");
	CreateSE("SE02","se戦闘_動作_跳躍高01");
	CreateSE("SE03","se戦闘_剣撃_地面に刺す01");
	CreateSE("SE04","se戦闘_打撃_ヒット低03");
	MusicStart("SE01",0,700,0,1000,null,false);


	Zoom("紅雀", 300, 1300, 1300, Dxl1, false);
	Move("紅雀", 150, @100, @100, Axl1, false);
	FadeDelete("紅雀", 150, Axl1, false);
	Wait(100);
	Zoom("絵背景EF01", 300, 2000, 4000, Dxl1, false);
	Fade("絵背景EF01", 0, 1000, null, true);
	Move("絵背景EF01", 300, @600, 100, Dxl2, false);
	FadeDelete("絵背景EF01", 200, Axl1, false);

	Shake("絵背景", 500, 3, 8, 0, 0, 1000, null, false);

	MusicStart("SE03",0,700,0,1000,null,false);

	Zoom("ミンク", 300, 1000, 1000, Dxl1, false);
	Fade("ミンク", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm55/4000150a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(32);

	FadeDelete("絵背景", 300, null, false);
	Move("ミンク", 200, @-200, @0, Axl1, false);
	Zoom("ミンク", 200, 1200, 1200, Dxl1, false);
	FadeDelete("ミンク", 200, null, false);

	Wait(100);


	Wait(200);

	MusicStart("SE04",0,700,0,1000,null,false);

	Shake("絵背景EF02", 500, 10, 2, 0, 0, 1000, null, false);
	Zoom("絵背景EF02", 300, 2000, 4000, Dxl1, false);
	Fade("絵背景EF02", 0, 1000, null, true);
	Zoom("絵背景EF02", 500, 1100, 1100, null, false);
	FadeDelete("絵背景EF02", 500, Axl1, false);


	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("絵板写", 200, 2000, 2000, Dxl1, false);
	FadeDelete("絵板写", 200, null, true);

	Wait(100);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Koujaku triumphantly swings around his sword&, and Mink 
blows massive numbers of the guards and Allmates away 
with his fists&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("ミンク");
	Delete("紅雀");
//	Fw("fw蒼葉_通常_shout");
	FwPro("fw蒼葉_通常_angry",3000,"fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/4000160a01">
"Ren&, MERCY set! &.&.&.Uryahh!"

{	Fw("fw蓮_通常マントなし_normal2");}//人型裸
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/4000170a06">
"Roger&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(32);

//おがみ：ＳＥダミー
//	CreateSE("SE01","展開ＳＥ");
//	MusicStart("SE01",0,700,0,1000,null,false);
	EffectTxtinA("蓮","慈");
	EffectTxtinB("蓮","慈");

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	CreateSE("SE02","se戦闘_打撃_風切り高01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_剣撃_地面に刺す01");
	CreateSE("SE05","se戦闘_打撃_ヒット高04");

	CreateTextureEXadd("絵背景EF01", 1000, -716, -729, "cg/ef/efx01剣閃01.jpg");
	CreateTextureEXadd("絵背景EF02", 1000, 0, -729, "cg/ef/efx01剣閃03.jpg");
	Rotate("絵背景EF02", 0, @0, @0, 180, null,true);


	CreateTextureEX("絵背景", 100, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 1500, 1500, null, true);

	CreateTextureEXadd("EF1", 500, center, Middle, "cg/ev/ev950蓮バトル汎用攻撃_効果剣閃.png");
	Rotate("EF1", 0, @0, 180, @0, null,true);
	Move("EF1", 0, @-250, @0, null, true);
	CreateTextureEXadd("EF2", 500, center, Middle, "cg/ef/efx02火花電光01.jpg");
	Zoom("EF2", 0, 2000, 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
A little behind the rest of the group&, Ren and I fought 
together&.

Kicking the guards facing me into the air&, I give Ren 
instructions&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(32);



	CreateTextureEX("蓮突進", 100, 400, Middle, "cg/ev/ev950蓮バトル汎用突進_人物蓮.png");
	CreateTextureEX("蓮攻撃", 100, -750, Middle, "cg/ev/ev950蓮バトル汎用攻撃_人物蓮.png");
	Rotate("蓮攻撃", 0, @0, 180, @0, null,true);
	Rotate("蓮攻撃", 100, @0, @0, @-50, null,false);
	Zoom("蓮攻撃", 0, 900, 900, null, true);
	Zoom("蓮突進", 0, 500, 500, null, true);
	SetBlur("蓮突進", true, 2, 300, 50, false);
	SetBlur("蓮攻撃", true, 2, 500, 50, false);




	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("絵背景", 100, 1000, null, false);
	Zoom("絵背景", 650, 2000, 2000, AxlDxl, false);
	BezierMove("絵背景", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);

	Zoom("蓮突進", 300, 800, 800, Dxl1, false);
	Move("蓮突進", 300, @-800, @0, Dxl2, false);
	Fade("蓮突進", 100, 1000, null, true);
	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景EF01", 0, 1000, null, true);
	Move("絵背景EF01", 400, -600, 0, Dxl2, false);
	FadeDelete("絵背景EF01", 200, Axl2, false);

	Wait(100);

	Fade("絵背景EF02", 0, 1000, null, true);
	Move("絵背景EF02", 400, -1216, 0, Dxl2, false);
	FadeDelete("絵背景EF02", 200, Axl2, false);


	Shake("EF2", 500, 10, 3, 0, 0, 1000, null, false);
	Zoom("EF2", 300, 2500, 2500, Dxl1, false);
	Fade("EF2", 0, 1000, null, true);

	Rotate("蓮突進", 100, @0, @0, @50, null,false);
	FadeDelete("蓮突進", 100, null, false);

	MusicStart("SE02",0,700,0,1000,null,false);


	Wait(100);

	MusicStart("SE04",0,700,0,1000,null,false);

	Fade("蓮攻撃", 100, 1000, null, false);

	Rotate("蓮攻撃", 300, @0, @0, 0, Dxl2,false);
	Move("蓮攻撃", 300, @300, @0, Dxl1, false);
	Zoom("蓮攻撃", 200, 1000, 1000, Dxl1, false);
	Fade("蓮攻撃", 150, 1000, null, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Zoom("EF1", 300, 1200, 1200, Dxl1, false);
	Move("EF1", 300, @200, @0, Dxl1, false);
	Fade("EF1", 0, 1000, null, true);
	FadeDelete("EF2", 500, null, false);

	Zoom("EF1", 300, 1000, 1000, Dxl1, false);
	Fade("EF1", 200, 1000, null, false);

	Wait(100);

	MusicStart("SE05",0,700,0,1000,null,false);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054a]
Ren changed his arm into his weapon&, tearing most of the 
Allmates to pieces&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Wait(32);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景上", 5000, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	Request("絵背景上", Smoothing);
	Zoom("絵背景上", 0, 1500, 1500, null, true);

	Move("蓮攻撃", 250, @300, @200, Axl3, false);
	Zoom("蓮攻撃", 250, 2000, 2000, Axl3, false);
	Move("EF1", 250, @1000, @0, Axl3, false);
	Zoom("EF1", 250, 2000, 2000, Axl3, false);

	Wait(130);

	Fade("絵背景上", 100, 1000, null, true);

	Delete("蓮*");
	Delete("EF*");
	Delete("絵背景");

	St("C",740, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",0,true);

	FadeDelete("絵背景上", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm55/4000180a03">
"Hey&, LOSS&."

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm55/4000190c10">
"LOSS set!"

{	Fw("fwAMウサギモドキ_ボクサー_normal");}
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm55/4000200c09">
"Roger!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(32);

	CreateTextureEX("絵背景", 200, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 1100, 1100, null, true);

	DeleteAllSt(200,false);
	Fade("絵背景", 300, 1000, null, true);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se戦闘_動作_突進複数01");
	CreateSE("SE03","se戦闘_銃_構える01複数");
	CreateSE("SE04","se戦闘_衝撃_破損01a");

//おがみ：ＳＥダミー
//	CreateSE("SE01","展開ＳＥ");
//	MusicStart("SE01",0,700,0,1000,null,false);

//※「失」セット。ウサギモドキが発光したミサイルのようにひゅんひゅん飛んでいく。
	EffectTxtinA("ノイズ","失");
	EffectTxtinB("ノイズ","失");

	CreateTextureSP("USA1", 100, -770, -700, "cg/ev/x/ev960ウサギモドキ戦闘構え_x02.jpg");
	Request("USA1", Smoothing);
	CreateTextureSP("USA2", 100, -770, -700, "cg/ev/x/ev960ウサギモドキ戦闘構え_x01.png");
	Request("USA2", Smoothing);
	CreateTextureEX("USA3", 100, center, middle, "cg/ev/ev960ウサギモドキ戦闘突進.jpg");
	Request("USA3", Smoothing);
	SetBlur("USA3", true, 1, 500, 50, false);
	MoveFTP1("@USA3",5000,5,10);

	MusicStart("SE01",0,700,0,1000,null,false);


	BezierMove("USA1", 1000, (@0,@0){@300,@-250}{@450,@-150}(-419,-300), null, false);
	BezierMove("USA2", 1000, (@0,@0){@300,@-250}{@450,@-150}(-367,-258), null, false);

	Zoom("USA1", 1000, 600, 600, Axl2, false);
	Zoom("USA2", 1000, 700, 700, Axl2, false);

	FadeDelete("絵背景", 300, null, false);


	Wait(850);

	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("USA3", 500, 4, 5, 0, 0, 1000, null, false);
	Zoom("USA3", 100, 1150, 1150, Dxl1, false);
	Fade("USA3", 100, 1000, null, true);
	Zoom("USA3", 300, 1080, 1080, AxlDxl, true);

	Delete("USA1");
	Delete("USA2");

	MusicStart("SE02",0,700,0,1000,null,false);
	MoveFTP1stop();
	Move("USA3", 300, @300, @150, Dxl3, false);
	Zoom("USA3", 300, 3100, 3100, Dxl3, false);
	Wait(150);

	MusicStart("SE04",0,700,0,1000,null,false);
	FadeDelete("USA3", 100, null, true);


	Wait(300);
	SetVolumeEX("SE04", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
Noiz types on the keyboard while giving instructions to 
the Pseudorabbits&, backing us up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 1500, 1500, null, true);

	CreateTextureEX("クリア", 100, center, Middle, "cg/bu/buクリア_正面マスクあり_normal.png");
	Zoom("クリア", 0, 950, 950, null, true);

	CreateSE("SE01","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("絵背景", 200, 1300, 1300, Dxl1, false);
	Fade("絵背景", 150, 1000, null, false);

	Zoom("クリア", 300, 1000, 1000, Dxl1, false);
	Fade("クリア", 200, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm55/4000210a04">
"Please stoooooooooooop!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Wait(16);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	CreateSE("SE01","se戦闘_打撃_ヒット低03");

	Move("クリア", 100, @0, @100, Axl1, false);
	Zoom("クリア", 100, 1500, 1500, Axl1, false);
	FadeDelete("クリア", 100, null, true);

	Fade("絵色白", 0, 1000, null, true);
	Delete("絵背景");
	CreatePlainSP("絵板写", 4000);
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵板写", 500, 10, 7, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 500, null, false);
	FadeDelete("絵色白", 300, null, true);

	Wait(300);


//※ごいん、と警備員を殴る

//※雑魚メイトの攻撃

	CreateTextureEX("絵背景", 100, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 1500, 1500, null, true);

	CreateTextureEX("ざこ", 100, -100, 5, "cg/ev/x/ev550バグ状態の蓮_x05.png");
	Request("ざこ", Smoothing);
	Zoom("ざこ", 0, 950, 950, null, true);
	SetBlur("ざこ", true, 1, 500, 50, false);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("絵背景", 200, 1300, 1300, Dxl1, false);
	Fade("絵背景", 150, 1000, null, false);

	Move("ざこ", 200, 100, @0, Dxl1, false);
	Zoom("ざこ", 300, 1100, 1100, Dxl1, false);
	Fade("ざこ", 200, 1000, null, false);


{	Fw("fw蒼葉_通常_angry");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/4000220a01">
"Ren&, defense!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	Wait(16);
	CreateTextureEX("絵マスク枠", 110, 0, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク右", 100, 0, 0, "cg/mask/ciスラッシュ_05_01.png", true);
	SetAlias("絵マスク右","絵マスク右");
	CreateTextureEX("絵マスク右/絵ＥＶ100", 100, 200, -300, "cg/ev/m/ev950蓮バトル汎用防御_m.jpg");

	Move("絵マスク右/絵ＥＶ100", 200, -742, -335, Dxl3, false);
	Fade("絵マスク*", 100, 1000, null, true);
	Wait(200);

//	Fw("fw蓮_通常マントなし_normal2");//人型裸

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/4000230a06">
"Roger&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(16);
//※蓮、防御シールド
	CreateTextureEX("EVM", 500, -742, -335, "cg/ev/m/ev950蓮バトル汎用防御_m.jpg");
	CreateTextureEX("EVM2", 500, center, middle, "cg/ev/ev950蓮バトル汎用防御.jpg");
	CreateTextureEXadd("EVM3", 500, center, middle, "cg/ev/ev950蓮バトル汎用防御.jpg");
	Zoom("EVM2", 0, 1500, 1500, null, true);

	CreateSE("SE01","se擬音_精神_ひび02");
	CreateSE("SE02","se戦闘_防衛_開口01");


	Fade("EVM", 0, 1000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);

	MusicStart("SE02",0,700,0,1000,null,false);
	DrawTransition("EVM", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", false);
	Zoom("EVM", 300, 750, 750, Dxl3, false);
	Fade("EVM2", 200, 1000, null, false);
	Zoom("EVM2", 300, 1000, 1000, Dxl3, true);


	Shake("EVM3", 1000, 10, 8, 0, 0, 1000, null, false);
	Fade("EVM3", 0, 1000, null, true);
	FadeDelete("EVM3", 300, null, true);

//	Zoom("絵マスク枠", 200, 5000, 1000, null, false);
//	Zoom("絵マスク右", 200, 5000, 1000, null, false);
//	Move("絵マスク枠", 200, @-650, @0, Dxl1, false);
//	Move("絵マスク右", 200, @-650, @0, Dxl1, true);

	Delete("ざこ");
	Delete("絵マスク*");
	Delete("絵マスク右/*");
	Delete("EVM");
	Delete("絵背景");
	FadeDelete("EVM2", 300, null, true);

	St("L",740, @0,@0,"bu紅雀_戦闘太刀_shout");
	St("R",740, @0,@0,"buミンク_戦闘_normal");
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm55/4000240a02">
"Toryah! Just a little more!!"

{
	DeleteSt("L", 150,true);
	FadeSt("R",150,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm55/4000250a05">
"These are just the small fry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	DeleteAllSt(150,true);

	CreateSE("SE01","se戦闘_打撃_ヒット複数01");
	MusicStart("SE01",0,700,0,1000,null,false);

//※紅雀とミンクでどかばきごすっ
	CreateTextureEX("絵背景", 100, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 1500, 1500, null, true);

	CreateTextureEX("クリア", 100, center, Middle, "cg/bu/buクリア_正面マスクあり_normal.png");
	Zoom("クリア", 0, 950, 950, null, true);

	Zoom("絵背景", 200, 1300, 1300, Dxl1, false);
	Fade("絵背景", 150, 1000, null, false);

	Zoom("クリア", 300, 1000, 1000, Dxl1, false);
	Fade("クリア", 200, 1000, null, false);

	SetVolumeEX("SE01", 3000, 0, null);


//	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm55/4000260a04">
"Please don't come over heeeeerreee!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(0);
	Wait(16);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	CreateSE("SE02","se戦闘_打撃_ヒット低03");

	Move("クリア", 100, @0, @100, Axl1, false);
	Zoom("クリア", 100, 1500, 1500, Axl1, false);
	FadeDelete("クリア", 100, null, true);

	Fade("絵色白", 0, 1000, null, true);
	Delete("絵背景");
	CreatePlainSP("絵板写", 4000);
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵板写", 500, 10, 7, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 500, null, false);
	FadeDelete("絵色白", 300, null, true);
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(200);

//※ごいん、ごいん



{	St("C",740, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm55/4000270a03">
"DEMOLISH&."

{	Fw("fwAMウサギモドキ_リーダー_normal");}
//【ウサギモドキリーダー】
<voice name="ウサギモドキリーダー" class="ウサギモドキ" src="voice/dm55/4000280c10">
"DEMOLISH set!"

{	Fw("fwAMウサギモドキ_ボクサー_normal");}
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm55/4000290c09">
"Roger!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TextBoxDelete(0);

	Wait(32);

//おがみ：仮組み　悩みちゅ

	CreateTextureEX("絵背景", 200, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 1100, 1100, null, true);

	DeleteAllSt(200,false);
	Fade("絵背景", 300, 1000, null, true);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se戦闘_動作_突進複数01");
	CreateSE("SE03","se戦闘_銃_構える01複数");
	CreateSE("SE04","se戦闘_衝撃_破損01a");

//おがみ：ＳＥダミー
//	CreateSE("SE01","展開ＳＥ");
//	MusicStart("SE01",0,700,0,1000,null,false);

//※ノイズの攻撃、「崩」セット。ウサギモドキが発光ミサイルになって飛んでくる。
	EffectTxtinA("ノイズ","崩");
	EffectTxtinB("ノイズ","崩");

	CreateTextureSP("USA1", 100, -770, -700, "cg/ev/x/ev960ウサギモドキ戦闘構え_x02.jpg");
	Request("USA1", Smoothing);
	Rotate("USA1", 0, @0, 180, @0, null,true);
	CreateTextureSP("USA2", 100, -770, -700, "cg/ev/x/ev960ウサギモドキ戦闘構え_x01.png");
	Request("USA2", Smoothing);
	Rotate("USA2", 0, @0, 180, @0, null,true);
	CreateTextureEX("USA3", 100, center, middle, "cg/ev/ev960ウサギモドキ戦闘突進.jpg");
	Request("USA3", Smoothing);
	Rotate("USA3", 0, @0, 180, @0, null,true);
	SetBlur("USA3", true, 1, 500, 50, false);
	MoveFTP1("@USA3",5000,5,10);


	MusicStart("SE01",0,700,0,1000,null,false);

	BezierMove("USA1", 1000, (@0,@0){@300,@-250}{@450,@-150}(-419,-300), null, false);
	BezierMove("USA2", 1000, (@0,@0){@300,@-250}{@450,@-150}(-367,-258), null, false);

	Zoom("USA1", 1000, 600, 600, Axl2, false);
	Zoom("USA2", 1000, 700, 700, Axl2, false);

	FadeDelete("絵背景", 300, null, false);


	Wait(850);

	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("USA3", 500, 4, 5, 0, 0, 1000, null, false);
	Zoom("USA3", 100, 1150, 1150, Dxl1, false);
	Fade("USA3", 100, 1000, null, true);
	Zoom("USA3", 300, 1080, 1080, AxlDxl, true);

	Delete("USA1");
	Delete("USA2");

	MusicStart("SE02",0,700,0,1000,null,false);
	MoveFTP1stop();
	Move("USA3", 300, @-300, @150, Dxl3, false);
	Zoom("USA3", 300, 3100, 3100, Dxl3, false);
	Wait(150);

	MusicStart("SE04",0,700,0,1000,null,false);
	FadeDelete("USA3", 100, null, true);



	CreateTextureEXadd("絵背景EF01", 1000, -716, -729, "cg/ev/ev950蓮バトル汎用攻撃a_効果剣閃.png");

	Wait(32);

	SetVolumeEX("SE04", 1000, 0, null);

	CreateTextureEXadd("EF1", 500, center, Middle, "cg/ev/x/ev950蓮の剣砲構え_効果風圧_x01.png");
	SetVertex("EF1", 514, 435);
	Zoom("EF1", 0, 2300, 2300, null, true);

	CreateTextureEXadd("EF2", 1000, -212, 27, "cg/ef/efx02火花電光01.jpg");
	Zoom("EF2", 0, 1800, 1800, null, true);

	CreateColorEXadd("EF3", 5000, "FFFFFF");
	DrawTransition("EF3", 0, 500, 500, 100, null, "cg/data/beam_03_00_0.png", true);
	Fade("EF3", 0, 0, null, true);

	CreateColorEXadd("EF4", 5000, "FFFFFF");


	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm55/4000300a01">
"Ren! Cover Noiz's attack! JUBILATION set!"

{	Fw("fw蓮_通常マントなし_normal2");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm55/4000310a06">
"Roger&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);


	Wait(32);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	CreateSE("SE02","se戦闘_打撃_風切り高01");
	CreateSE("SE03","se戦闘_動作_跳躍低01");
	CreateSE("SE04","se戦闘_剣撃_地面に刺す01");
	CreateSE("SE05","se擬音_精神_ひび02");
	CreateSE("SE06","se擬音_精神_脱出01");
	CreateSE("SE07","se戦闘_衝撃_破損01a");
	CreateSE("SE08","se戦闘_メガ砲_チャージ01");

	CreateMovieEX("絵動画", 2000, 120, 170, true, true, "dx/mv0003集中線01_白&.ngs");
	Zoom("絵動画",0,5000,3000,null,true);

	CloudZoomSmokeSet01("稲妻",200,"cg/ev/x/ev950蓮の剣砲構え_効果紫電_x01.png");

	EffectTxtinA("蓮","慶");
	EffectTxtinB("蓮","慶");

	CreateTextureEX("絵背景", 100, center, Middle, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	CreateTextureEX("蓮攻撃", 100, -250, Middle, "cg/ev/ev950蓮の剣砲構え.jpg");
	CreateTextureEXadd("光", 100, Center, Middle, "cg/ef/effi暴露成功_ef01.png");

	SetShade("絵背景", HEAVY);

	Zoom("絵背景", 0, 1500, 1500, null, true);
	Zoom("蓮攻撃", 0, 1300, 1300, null, true);
	Zoom("光", 0, 5000, 5000, null, true);

	Rotate("蓮攻撃", 100, @0, @0, @50, null,false);
	Move("光", 0, @-250, @50, null, true);
	SetBlur("蓮攻撃", true, 2, 300, 50, false);


	Shake("EF1", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("光", 10000000, 3, 3, 3, 3, 900, null, false);
	Shake("蓮攻撃", 10000000, 3, 3, 3, 3, 900, null, false);

	RotetoLoopOGM02("光プロセス","光",1800,-3600);
	RotetoLoopOGM03("光プロセス2","EF1",34000,-3600);


	MusicStart("SE03",0,700,0,1000,null,false);


	Fade("絵背景EF02", 100, 1000, null, false);
	Fade("絵背景", 100, 1000, null, false);
	Zoom("絵背景", 650, 2000, 2000, AxlDxl, false);
	BezierMove("絵背景", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@15,@-150), null, false);
	BezierMove("絵背景EF02", 650, (@0,@0){@-300,@-250}{@-450,@-150}(@150,@-150), null, false);

	Wait(100);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景EF01", 0, 1000, null, true);
	Move("絵背景EF01", 400, -200, 0, Dxl2, false);
	FadeDelete("絵背景EF01", 200, Axl2, false);

	Wait(100);

	FadeDelete("絵背景EF02", 200, Axl2, false);

	MusicStart("SE02",0,700,0,1000,null,false);


	Wait(100);

	MusicStart("SE04",0,700,0,1000,null,false);
	MusicStart("SE08",0,600,0,200,null,false);

	Zoom("蓮攻撃", 300, 1100, 1100, Dxl3, false);
	Fade("蓮攻撃", 100, 1000, null, false);
	Move("蓮攻撃", 300, -180, -140, Dxl3, false);
	Rotate("蓮攻撃", 300, @0, @0, 0, Dxl2,true);
	SetBlur("蓮攻撃", false, 2, 300, 50, false);

	SetBlur("蓮攻撃", true, 2, 300, 50, false);

	CloudZoomSmokeStart01(1500,50,700,4500,900,120,250,240,200,Dxl1);

	Fade("絵動画", 3000, 1000, Axl1, false);
	Fade("EF1", 3000, 500, null, false);
	Fade("光", 3000, 500, null, false);

	Zoom("蓮攻撃", 3000, 1000, 1000, AxlDxl, false);

	Shake("EF1", 500, 10, 3, 0, 0, 1000, null, false);
	Move("EF1", 300, -180, -140, Dxl1, false);

	MoveFTP1("@蓮攻撃",3000,3,1);
	MoveFTP2("@EF1",3700,3,2);

	Wait(3000);



	Shake("EF2", 1000, 10, 21, 0, 0, 1000, null, false);
	Fade("EF2", 0, 1000, null, true);
	Wait(50);

	MoveFTP1stop();
	MoveFTP2stop();

	MusicStart("SE05",0,700,0,1000,null,false);
	MusicStart("SE06",0,700,0,1000,null,false);
	SetVolumeEX("SE08", 1000, 0, null);
	SetVolumeEX("@dm*", 3000, 0, null);

	SetBlur("蓮攻撃", true, 2, 300, 50, false);
	Move("蓮攻撃", 200, -20, -200, Dxl2, false);
	Fade("EF3", 50, 1000, null, true);

	Shake("蓮攻撃", 1000, 10, 3, 12, 7, 900, null, false);

	Wait(50);

	Fade("EF4", 200, 1000, Axl1, true);

	MusicStart("SE07",0,1000,0,1000,null,false);

//※蒼葉の攻撃。「慶」セット。蓮の両腕からぐぐっと刃が出てきて、そこにビリッと電流が走る。
//※蓮、腕を交差させて電気溜め→敵に向かって腕を開いて放つ。

//※空間が大きくどーん！

//※ライムでのバトルが終わり、現実へ帰ってくる

	Wait(3000);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(3000);

//※次ファイル["dm5550.nss"]

}
