//<continuation number="470">
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


scene dm5470_vs.nss_MAIN
{

$TEXTBOX_TYPE="ライム";


	if($dm5450_vs_バトルなう==true){
	}else{
	RMAlarmSet(3000);
	}


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

	//▼演出で使用した素材を削除
	RMAlarmDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5480_vs.nss";

}


scene dm5470_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(10,"bg201011_0_ライムパブリックフィールド");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//あきゅん「演出：ライムのアラート」
//※侵入者来たよーというアラーム（エラーアラームでもいい）
	CreateSE("SE01","se擬音_ライム_アラート01");
	MusicStart("SE01",0,700,0,1000,null,true);
	//RMAlarmSet(3000);

//小分けして生成-1
	RhymeDrawSet("bug02_back00", 800, -13, 332, "cg/ev/x/ev550バグ状態の蓮_x04.png");
	RhymeDrawSet("bug02_back01", 700, -13, -220, "cg/ev/x/ev550バグ状態の蓮_x01.png");

	Wait(20);
//小分けして生成-1-2
	RhymeDrawSet("bug02_back02", 600, 281, -268, "cg/ev/x/ev550バグ状態の蓮_x03.png");
	RhymeDrawSet("bug02_back03", 500, 105, -60, "cg/ev/x/ev550バグ状態の蓮_x02.png");

	RMAlarm();

//※ノイズが空間から現れる

{	Fw("fw蒼葉_通常_rage");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000010a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When an alarm sounds&, the space starts to warp&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	RMAlarmClose();
	SetVolumeEX("SE*", 3000, 0, null);

	Wait(50);

//小分けして生成-2
	RhymeDrawSet("bug03_back00", 800, 714, 448, "cg/ev/x/ev550バグ状態の蓮_x16.png");


	CoilStartSet();
	RhymeDrawSet("ノイズ",1000,345,21,"cg/st/stノイズ_通常_normal.png");
	St("C",740, @0,@0,"stノイズ_通常_normal");
	CreateSE("SE01","se擬音_ライム_顕現01");

	MusicStart("SE01",0,700,0,1000,null,false);
	CoilStartFade2();
	RhymeDrawFade("ノイズ");
	FadeSt("C",200,true);

	Wait(600);

//小分けして生成-2-2
	RhymeDrawSet("bug03_back01", 700, 511, 19, "cg/ev/x/ev550バグ状態の蓮_x05.png");
	RhymeDrawSet("bug03_back02", 600, 733, -178, "cg/ev/x/ev550バグ状態の蓮_x06.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
While I tensed and readied myself for a blow&, Noiz 
appeared&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm010",0,450,true);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000020a01">
"Noiz!?"

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000030a03">
"Seriously&, none of this shit makes sense anymore&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000040a01">
"How did you get here!?"

{	St("C",740, @0,@0,"stノイズ_通常_pride");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000050a03">
"Who do you think you're talking to?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Noiz makes a small grin and walks up to me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000060a03">
"Anyway&, I forcibly opened this field&. The others should be here soon&.&.&. and some others&, too&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000070a01">
"Others?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	DeleteAllSt(200,true);

//※侵入者来たよーというアラーム（エラーアラームでもいい）
	CreateSE("SE01","se擬音_ライム_アラート01");
	CreateSE("SE02","se擬音_ライム_顕現01");
	CreateSE("SE03","se擬音_ライム_顕現01");
	CreateSE("SE04","se擬音_ライム_顕現01");

	CoilStartSet();

	St("L",740, @0,@0,"stミンク_通常_normal");
	St("C",1050, @0,@0,"st紅雀_通常_normal2");
	St("R",740, @0,@0,"stクリア_正面マスクあり_normal");

	MusicStart("SE01",0,700,0,1000,null,true);

	RhymeDrawSet("ミンク",1000,61,-14,"cg/st/stミンク_通常_normal.png");
	RhymeDrawSet("紅雀",1100,322,6,"cg/st/st紅雀_通常_normal2.png");
	RhymeDrawSet("クリア",1000,618,26,"cg/st/stクリア_正面マスクあり_normal.png");


	RMAlarm();

	CoilStartFade2();
	MusicStart("SE04",0,700,0,1000,null,false);
	RhymeDrawFade("紅雀");
	FadeSt("C",200,false);

	MusicStart("SE02",0,700,0,1000,null,false);
	RhymeDrawFade("ミンク");
	FadeSt("L",200,false);

	MusicStart("SE03",0,700,0,1000,null,false);
	RhymeDrawFade("クリア");
	FadeSt("R",200,false);

	SetVolumeEX("SE*", 2000, 0, null);

	RMAlarmClose();

//	Wait(600);


//小分けして生成-3
	RhymeDrawSet("bug01_back00", 800, 125, 410, "cg/ev/x/ev550バグ状態の蓮_x08.png");
	RhymeDrawSet("bug01_back01", 700, 332, 34, "cg/ev/x/ev550バグ状態の蓮_x09.png");
	RhymeDrawSet("bug01_back02", 600, 416, -341, "cg/ev/x/ev550バグ状態の蓮_x10.png");
	RhymeDrawSet("bug01_back03", 500, 200, -273, "cg/ev/x/ev550バグ状態の蓮_x07.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/7000080a02">
"Aoba!"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/7000090a04">
"Master!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
As the alarm sounded&, Koujaku&, Clear&, and Mink appeared 
one by one&.

The alarm still hasn't stopped&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	CreateTextureEXadd("先定義EF01", 3000, center, middle, "cg/ev/x/ev550バグ状態の蓮_x15.png");
	Zoom("先定義EF01", 0, 2000, 2000, null, true);
	CreateTextureEXadd("先定義EF01", 3000, center, middle, "cg/ev/x/ev550バグ状態の蓮_x15.png");
	Zoom("先定義EF01", 0, 2000, 2000, null, true);
	CreateTextureEXadd("先定義EF01", 3000, center, middle, "cg/ev/x/ev550バグ状態の蓮_x15.png");
	Zoom("先定義EF01", 0, 2000, 2000, null, true);
	SetBlur("先定義EF*", true, 1, 500, 200, false);

	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",180,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000100a03">
"They're coming&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Wait(50);

//小分けして生成-4
	RhymeDrawSet("bug04_back00", 800, 473, 148, "cg/ev/x/ev550バグ状態の蓮_x11.png");
	RhymeDrawSet("bug04_back01", 700, 873, -117, "cg/ev/x/ev550バグ状態の蓮_x14.png");

//あきゅん「素材要望：↓の一枚絵欲しいな……」
//おがみ：素材来てから演出　仮状態
	CreateTextureEX("絵背景", 2000, Center, Middle, "cg/ev/ev550バグ状態の蓮.jpg");
	SetBlur("絵背景", true, 2, 500, 100, false);
	Zoom("絵背景", 0, 1300, 1300, null, true);
//	RhymeDrawSet("絵背景EF", 2100, Center, Middle, "cg/ev/ev550バグ状態の蓮.jpg");

	CreateTextureEX("背景ぼかし", 450, 400, middle, "cg/ev/x/ev550バグ状態の蓮_背景のみ.jpg");
	SetShade("背景ぼかし", SEMIHEAVY);
	Zoom("背景ぼかし", 0, 2000, 2000, null, true);
	CreateTextureEX("背景ぼかし上のせ", 950, -500, middle, "cg/ev/x/ev550バグ状態の蓮_背景のみ.jpg");
	SetShade("背景ぼかし上のせ", HEAVY);
	Zoom("背景ぼかし上のせ", 0, 2000, 2000, null, true);

	CreateSE("SE99","se擬音_ライム_アラート01");
	MusicStart("SE99",0,700,0,1000,null,true);

	CreateTextureEX("bug02cg_back00", 800, -13, 332, "cg/ev/x/ev550バグ状態の蓮_x04.png");
	CreateTextureEX("bug02cg_back01", 700, -13, -220, "cg/ev/x/ev550バグ状態の蓮_x01.png");
	CreateTextureEX("bug02cg_back02", 600, 281, -268, "cg/ev/x/ev550バグ状態の蓮_x03.png");
	CreateTextureEX("bug02cg_back03", 500, 105, -60, "cg/ev/x/ev550バグ状態の蓮_x02.png");

	CreateTextureEX("bug03cg_back00", 800, 714, 448, "cg/ev/x/ev550バグ状態の蓮_x16.png");
	CreateTextureEX("bug03cg_back01", 700, 511, 19, "cg/ev/x/ev550バグ状態の蓮_x05.png");
	CreateTextureEX("bug03cg_back02", 600, 733, -178, "cg/ev/x/ev550バグ状態の蓮_x06.png");

	CreateTextureEX("bug01cg_back00", 800, 125, 410, "cg/ev/x/ev550バグ状態の蓮_x08.png");
	CreateTextureEX("bug01cg_back01", 700, 332, 34, "cg/ev/x/ev550バグ状態の蓮_x09.png");
	CreateTextureEX("bug01cg_back02", 600, 416, -341, "cg/ev/x/ev550バグ状態の蓮_x10.png");
	CreateTextureEX("bug01cg_back03", 500, 200, -273, "cg/ev/x/ev550バグ状態の蓮_x07.png");

	CreateTextureEX("bug04cg_back00", 800, 473, 148, "cg/ev/x/ev550バグ状態の蓮_x11.png");
	CreateTextureEX("bug04cg_back01", 700, 873, -117, "cg/ev/x/ev550バグ状態の蓮_x14.png");
	CreateTextureEX("bug04cg_back02", 600, 649, -222, "cg/ev/x/ev550バグ状態の蓮_x12.png");
	CreateTextureEX("bug04cg_back03", 500, 855, -370, "cg/ev/x/ev550バグ状態の蓮_x13.png");

//	SetBlur("bug01cg_*", true, 1, 500, 200, false);
//	SetBlur("bug02cg_*", true, 1, 500, 200, false);
//	SetBlur("bug03cg_*", true, 1, 500, 200, false);
//	SetBlur("bug04cg_*", true, 1, 500, 200, false);

	CreateTextureEXadd("蓮バグ01", 1000, 167, 550, "cg/ev/x/ev550バグ状態の蓮_x15.png");
	Zoom("蓮バグ01", 0, 2000, 2000, null, true);
	CreateTextureEXsub("蓮バグ02", 650, -167, 252, "cg/ev/x/ev550バグ状態の蓮_x15.png");
	Zoom("蓮バグ02", 0, 2000, 1700, null, true);
	CreateTextureEXadd("蓮バグ03", 500, 167, -52, "cg/ev/x/ev550バグ状態の蓮_x15.png");
	Zoom("蓮バグ03", 0, 1500, 1500, null, true);
//	SetBlur("蓮バグ*", true, 2, 500, 200, false);
//	DrawEffect("蓮バグ01", 0, "HighWave", 10, 20, null);
//	DrawEffect("蓮バグ02", 0, "HighWave", 5, 10, null);

	$ライトナット名１ = @蓮バグ01;
	$ライトナット名２ = @蓮バグ02;
	$ライトナット名３ = @蓮バグ03;
	$ライトタイム = 300;

	CreateProcess("プロセス表示１", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("プロセス表示１","プロセス表示１");

//	MoveFTP1("@蓮バグ*",5000,20,5);
//	MoveFTP2("@bug02*",3000,4,3);
//	MoveFTP3("@bug03*",3000,4,3);
//	MoveFTP4("@背景*",3000,2,3);


	CreateSE("SE01","se擬音_ライム_顕現01複数");
	CreateSE("SE02","se擬音_ライム_顕現01複数");
	CreateSE("SE03","se擬音_精神_煙る01");

	CoilStartSet();

//小分けして生成-4-2
	RhymeDrawSet("bug04_back02", 600, 649, -222, "cg/ev/x/ev550バグ状態の蓮_x12.png");
	RhymeDrawSet("bug04_back03", 500, 855, -370, "cg/ev/x/ev550バグ状態の蓮_x13.png");

	RMAlarm();


	Fade("背景ぼかし", 300, 1000, null, true);


	Request("プロセス表示１", Start);



	CoilStartFade2();
	MusicStart("SE99",3000,300,0,1000,null,true);

	MusicStart("SE01",0,500,0,400,null,false);

	RhymeDrawFadeMax("bug02_back00");
	Fade("bug02cg_back00", 100, 1000, null, false);
	RhymeDrawFadeMax("bug03_back00");
	Fade("bug03cg_back00", 100, 1000, null, false);
//	CoilStartFade2();
	RhymeDrawFadeMax("bug03_back01");
	Fade("bug03cg_back01", 100, 1000, null, false);
	RhymeDrawFadeMax("bug03_back02");
	Fade("bug03cg_back02", 100, 1000, null, false);
	CoilStartFade2();
	RhymeDrawFadeMax("bug02_back01");
	Fade("bug02cg_back01", 100, 1000, null, false);
	RhymeDrawFadeMax("bug02_back02");
	Fade("bug02cg_back02", 100, 1000, null, false);
//	CoilStartFade2();


	RhymeDrawFadeMax("bug02_back03");
	Fade("bug02cg_back03", 100, 1000, null, false);

	Fade("背景ぼかし上のせ", 200, 1000, null, true);

//	RhymeDrawFadeMax("bug03_back03");
//	Fade("bug03cg_back03", 100, 1000, null, true);


	MusicStart("SE02",0,500,0,400,null,false);

	Move("背景ぼかし", 0, -500, @0, null, true);

	Delete("bug03*");
	Delete("bug02*");
	Delete("背景ぼかし上のせ");

//	MoveFTP2("@bug01*",3000,4,3);
//	MoveFTP3("@bug04*",3000,4,3);

	CoilStartFade2();
	RhymeDrawFadeMax("bug01_back00");
	Fade("bug01cg_back00", 100, 1000, null, false);
	RhymeDrawFadeMax("bug04_back00");
	Fade("bug04cg_back00", 100, 1000, null, false);
	CoilStartFade2();
	RhymeDrawFadeMax("bug04_back01");
	Fade("bug04cg_back01", 100, 1000, null, false);
	RhymeDrawFadeMax("bug04_back02");
	Fade("bug04cg_back02", 100, 1000, null, false);
	CoilStartFade2();
	RhymeDrawFadeMax("bug01_back01");
	Fade("bug01cg_back01", 100, 1000, null, false);
	RhymeDrawFadeMax("bug01_back02");
	Fade("bug01cg_back02", 100, 1000, null, false);

//	CoilStartFade2();
	SetVolumeEX("SE*", 1000, 0, null);
	MusicStart("SE03",0,700,0,1500,null,false);
	Zoom("絵背景", 1000, 1000, 1000, Dxl1, false);
	Fade("絵背景", 1000, 1000, null, false);
	RhymeDrawFadeMax("bug01_back03");
	Fade("bug01cg_back03", 100, 1000, null, false);
	RhymeDrawFadeMax("bug04_back03");
	Fade("bug04cg_back03", 100, 1000, null, false);



/*

	CoilStartSet();
	CreateTextureEX("絵背景", 100, Center, Middle, "cg/ev/ev550バグ状態の蓮.jpg");
	RhymeDrawSet("絵背景ＥＦ",1000,0,0,"cg/ev/ev550バグ状態の蓮.jpg");

	CoilStartFade2();
	MusicStart("SE01",0,700,0,1000,null,false);
	RhymeDrawFade("絵背景ＥＦ");
	Fade("絵背景", 200, 1000, null, true);

*/

	Wait(1000);

//	MoveFTP1stop();
//	MoveFTP2stop();
//	MoveFTP3stop();
//	MoveFTP4stop();
	Delete("bug*");
	Delete("背景*");
	Delete("蓮*");

	RMAlarmClose();
	RMAlarmDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
After Noiz murmurs that&, the security Allmates enter&.

And not just a group either&, more keep popping in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000110a01">
"They just keep coming&.&.&."

//※↓こっちの台詞も納品されてるはずなので、もしなかったら探してもらえると助かります！（山
{	Fw("fwノイズ_通常_normal3");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000120a03">
"When I forcibly opened the Drive-By field&, it was like
 widening a pipe&."

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000130a03">
"So without any discrimination&, as many things as
 realistically possible will jump into Rhyme&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000140a01">
"That's some bullshit&."

{	Fw("fwノイズ_通常_serious");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000150a03">
"I didn't have the time to think it out&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The security guards just stand there&, wobbling as if 
they're not completely awake&. The Allmates are staring 
at us in clear hostility&.

Why are the guards&, instead of the Allmates&, the ones 
standing there?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000160a01">
"Aren't they&.&.&. acting a little weird?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("絵背景", 300, null, true);

	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051a]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000170a03">
"It's because of an Allmate bug&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000180a01">
"Bug?"

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000190a03">
"It's a minor bug that Allmates have always had&. But the
 symptoms haven't shown so strongly until suddenly this
 morning&."

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000200a03">
"It's from the spread of this worm&. The bug corrupts them&.
 It's big news now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stノイズ_通常_serious");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000210a03">
"The bug infects them further&, the Allmates end up
 unable to control themselves and go violent&. And for some
 reason&, the owners of infected Allmates lose their
 willpower&."

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000220a03">
"When Allmates are registered&, the owner has a recognition
 chip physically put inside them and they connect online&.
 I think that's why&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000230a01">
"Allmates and their owners share consciousness when they're
 online&, so if you reverse the route&, Allmates could
 possibly corrupt their human's mind&."

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000240a03">
"Probably&. All the newer models are going crazy&. But for
 some reason&, the bug was never fixed in the first place&."

{	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000250a03">
"If you look at how you could see this happening from the
 get-go and how the bug was found out&, you can tell that
 Toue is one sneaky bastard&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000260a01">
"Then maybe Ren has that bug&.&.&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm54/7000270a05">
"All the almates with the bug have a crystal-like shape
 come out in front of their eyes&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000280a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：フラッシュバック入れる」
	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev004犬蓮起動b.jpg");

	DeleteAllSt(0,true);

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
A scrap of crystal&.
Ren's eye showed that symptom&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");

	CreateTextureEX("絵背景Ｌ", 100, 0, -100, "cg/ev/l/ev550バグ状態の蓮_l.jpg");

	Move("絵背景Ｌ", 60000, -1024, @0, null, false);
	Fade("絵背景Ｌ", 0, 1000, null, true);

	EfRecoIn2(400);

//あきゅん「↑：ここで画面戻す」

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000290a01">
"So it was because of that bug&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/7000300a02">
"Did Ren show that symptom?"

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000310a01">
"Yeah&.&.&."

{	Fw("fw紅雀_通常_angry3");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/7000320a02">
"Hey&. Isn't there some way to help Ren?"

{	Fw("fwノイズ_通常_cool2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000330a03">
"They say on the news that someone's making a way to fix
 it&, but I wonder about that&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/7000340a04">
"Ren-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000350a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	Wait(200);

//	DeleteFw();

	FadeDelete("絵背景Ｌ", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Ren&.&.&.

{
	$StPos紅雀=ML;
	$StPosミンク=RR;
	$StPosクリア=MR;
	$StPosノイズ=LL;

	$StPri紅雀=740;
	$StPriミンク=730;
	$StPriクリア=735;
	$StPriノイズ=720;

	St($StPos紅雀,$StPri紅雀, @0,@0,"st紅雀_通常_angry3");
	St($StPosミンク,$StPriミンク, @0,@0,"stミンク_通常_normal2");
	St($StPosクリア,$StPriクリア, @0,@0,"stクリア_正面マスクあり_normal");
	St($StPosノイズ,$StPriノイズ, @0,@0,"stノイズ_通常_normal");
	FadeSt($StPos紅雀,300,false);
	FadeSt($StPosミンク,300,false);
	FadeSt($StPosクリア,300,false);
	FadeSt($StPosノイズ,300,true);
}
I set myself straight and look at everyone&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000360a01">
"There's a way to save him&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000370a01">
"I'll explain in detail later&, but to save Ren right now&.&.&. I'll use Scrap on myself&."

{	St($StPosノイズ,$StPriノイズ, @0,@0,"stノイズ_通常_angry");
	FadeSt($StPosノイズ,200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000380a03">
"&.&.&.What?"

{	St($StPosミンク,$StPriミンク, @0,@0,"stミンク_通常_angry");
	FadeSt($StPosミンク,200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm54/7000390a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/7000400a04">
"Master&.&.&."

{	St($StPos紅雀,$StPri紅雀, @0,@0,"st紅雀_通常_cool2");
	FadeSt($StPos紅雀,200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/7000410a02">
"Scrap?　On yourself? Can you even do that?"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000420a01">
"We don't know until we try&. It might turn out fine&.&.&. or
 not at all&. But there's no other way&. It won't work if I
 don't do it here and now&, probably&."

{	St($StPosミンク,$StPriミンク, @0,@0,"stミンク_通常_angry2");
	FadeSt($StPosミンク,200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm54/7000430a05">
"You don't know what you're talking about&."

{	St($StPosノイズ,$StPriノイズ, @0,@0,"stノイズ_通常_normal2");
	FadeSt($StPosノイズ,200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/7000440a03">
"If you use Scrap here&, you'll lose your conciousness and
 cause yourself to log out&. There's no point&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/7000450a04">
"That's right&, Master&. It's too dangerous&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000460a01">
"I know that&. I want everyone to cooperate with me&. I want
 to save him&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/7000470a01">
"I want you guys to back me up when I'm in Scrap&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	SetVolumeEX("@dm*", 3000, 0, null);

//※次ファイル["dm5480_vs.nss"]

}
