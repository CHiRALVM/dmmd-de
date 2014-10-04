//<continuation number="190">
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


scene dm1330.nss_MAIN
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
	#bg304023_5_東江タワー通用口=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1340.nss";

}


scene dm1330.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg304023_5_東江タワー通用口");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg304021_5_東江タワー前通り.jpg");

	Delete("上背景");

	SoundPlay("@dm001",0,450,true);

	DrawDelete("絵色黒", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When we come close to the tower entrance&, we advance on 
the other side and go towards the direction of the employee
entrance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景100");

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
There are little to no people that go through the out-of-
sight entrance&, so there was not much security there&. 

Two security guards stood in front of a gate meant for 
vehicles to pass through&.

We hide in a nearby alley and assess the situation&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwm紅雀チームB_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【紅雀メンバーＢ】
<voice name="紅雀メンバーＢ" class="紅雀メンバーＢ" src="voice/dm13/3000010e48">
"First we have to get those guards down&. While we're doing
 that&, you guys head inside&."

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/3000020a02">
"Is that really okay? We don't know if they have weapons on them&."

{	Fw("fwm紅雀チームA_通常_normal");}
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm13/3000040e47">
"It was only from the Old Resident District police force's
 mouth&, but the guests don't like the police carrying guns
 around here&, so they just have tiny crap on them&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw紅雀_通常_cool");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/3000050a02">
"I see&. But still&, be careful&. I'm counting on you&."

{	Fw("fwm紅雀チームB_通常_normal");}
//【紅雀メンバーＢ】
<voice name="紅雀メンバーＢ" class="紅雀メンバーＢ" src="voice/dm13/3000060e48">
"Yessir!"

{	Fw("fwm紅雀チームA_通常_normal");}
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm13/3000070e47">
"All right&, let's go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	SoundPlay("@dm009",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Beni-Shigure members avalanche out of the alley and run to the gate&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm13/3000080e16">
"Wh-What!?"

{	Fw("fwm紅雀チームA_通常_normal");}
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm13/3000090e47">
"Sorry about this!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE11","se環境_戦闘_戦闘01L");
	MusicStart("SE11",0,600,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
They pounce on the distracted policemen&, and it turns into an all out brawl&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/3000100a02">
"We're heading out too!"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/3000110a01">
"Got it!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE11", 3000, 500, null);

	CreateSE("SE01","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	CreateTextureSP("絵背景50", 100, Center, InBottom, "cg/bg/m/bg304023_5_東江タワー通用口_m.jpg");

	DrawDelete("絵黒幕", 300, 100, Dxl1, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Koujaku and I run out of the alley to the side entrance&.

Some more policemen appear and block our way&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwm警備B_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm13/3000120e17">
"Wait!"

{	St("C",740, @0,@0,"st紅雀_戦闘素手_pride");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/3000130a02">
"You- Hah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
The policeman raises his arm&, baton in hand&, over Koujaku&, but he blocks it with his arm and the policeman gets a fistto the solar plexus&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm警備B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm13/3000140e17">
"Ugh!"

{	Fw("fwm警備C_通常_normal");}
//【警備Ｃ】
<voice name="警備Ｃ" class="警備Ｃ" src="voice/dm13/3000150e18">
"Damn&, stop right there!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/3000160a01">
"Whoa!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se戦闘_動作_跳躍高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
A mob of them rush towards us&, and we run away to the side like hell&.

A stumbling and slow policeman gets one of my kicks to his back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fwm警備C_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【警備Ｃ】
<voice name="警備Ｃ" class="警備Ｃ" src="voice/dm13/3000170e18">
"Guh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/3000180a01">
"Take that!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
He falls foward&, his face planted into the ground&.

The surrounding Beni-Shigure members are brawling 
violently with the police force&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/3000190a02">
"Aoba!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
While Koujaku is running to the entrance&, he yells out to
me&. I run after him immediately&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Wait(100);

//※次ファイル["dm1340.nss"]

}
