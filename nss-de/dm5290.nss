//<continuation number="150">
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


scene dm5290.nss_MAIN
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

	#bg304141_5_東江タワーパーティホール=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5300.nss";

	//▼頭痛レベル設定
	$HALevel=3;

}


scene dm5290.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304072_5_東江タワーエレベーター");
	FadeBG(0,true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ24");
	MusicStart("SE02",0,700,0,900,null,false);

	CreateTextureEX("絵背景100", 100, -95, -547, "cg/bg/l/bg304072_5_東江タワーエレベーター_l.jpg");
	Fade("絵背景100", 500, 1000, null, true);

	Shake("絵背景100", 200, 0, 7, 0, 0, 500, null, true);

	SetVolumeEX("SE01", 500, 0, null);
	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,600,0,900,null,false);
}
Right as the doors opens&, Ren violently scrambles his way 
out of my arms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/9000010a01">
"Hey&, Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※蓮_走って行ってしまう
	CreateSE("SE01","se動物_足音_走る蓮01L");
	MusicStart("SE01",0,700,0,1300,null,true);

	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Ren disappeared through the gap only seconds after the 
doors had opened&.

What&.&.&.!?
What's going on with him&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg304141_5_東江タワーパーティホール");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, 270, -353, "cg/bg/l/bg304032_5_東江タワー廊下02_l.jpg");
	Rotate("絵背景100", 0, @0, @180, 0, null, true);
	Zoom("絵背景100", 0, 1300, 1300, null, true);
	Request("絵背景100", Smoothing);

	DrawDelete("絵黒幕", 250, 100, Dxl1, "slide_01_01_1", true);

	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,500,0,1400,null,false);

	BGPlainShake(500,300,5,5,0,0,1000,Dxl1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
When I get out of the elevator to go after Ren&, I run 
right into a woman and quickly apologize to her&.

I realize that she's dressed up quite nicely and 
come to the conclusion that a party must be taking place&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景110", 110, -1024, -576, "cg/bg/l/bg304141_5_東江タワーパーティホール_l.jpg");
	Delete("絵背景100");

	CreateSE("SE01","se動物_足音_走る蓮01L");
	MusicStart("SE01",0,700,0,1300,null,true);
	SetVolumeEX("SE*", 3000, 0, null);

	CreateSE("SEL01","se擬音_精神_超音波01L");
	MusicStart("SEL01",3000,200,0,600,null,true);

	Move("絵背景110", 1000, @200, @0, DxlAuto, false);
	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The blue silouettes by the door were of people quickly 
making their way into a hall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景110", 500, null, true);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/9000020a01">
"Ren&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I knew I looked terribly out of place&, but I bolted into 
the hall to go after Ren&.

Inside are many fancy-looking people&, holding glasses and 
plates while making small talk&. 

Everyone around took a quick glance at me&, but went right 
back to talking to one another&.

I bet they just don't want to get into any trouble&.
And just pretend they never saw anything&.

But the noise in the hall grows even louder&.
If they call security&, I'm screwed&.

I just keep looking for Ren without stopping for a second&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 6000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景111", 111, 0, Middle, "cg/bg/l/bg304141_5_東江タワーパーティホール_l.jpg");
	Move("絵背景111", 0, @0, @-50, null, true);
	DrawTransition("絵黒幕", 300, 1000, 0, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	Wait(300);

	SetVolumeEX("SEL01", 1000, 400, null);

	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);
	CreateTextureSP("絵背景112", 112, 0, -400, "cg/bg/l/bg304141_5_東江タワーパーティホール_l.jpg");
	Rotate("絵背景112", 0, @0, @180, @0, null,true);
	DrawTransition("絵黒幕", 300, 1000, 0, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Wait(300);

	SetVolumeEX("SEL01", 1000, 500, null);

	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Where the hell did he go?
If I don't find him soon&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SEL01", 2000, 1500, null);

//※演出：ちらっと白青葉の影演出入れる_後ほど演出強化
	CreateCamera("Ｃ", 0, 200, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureEX("絵背景", 3000, Center, Middle, "cg/bg/bg304141_5_東江タワーパーティホール.jpg");
	CreateTextureSP("Ｃ/絵背景", 11, Center, Middle, "cg/bg/l/bg304141_5_東江タワーパーティホール_l.jpg");
	CreateTextureSP("Ｃ/絵背景弐", 10, Center, Middle, "cg/bg/l/bg304141_5_東江タワーパーティホール_l.jpg");
	CreateTextureSP("Ｃ/絵立ち絵", 510, 680, 145, "cg/st/m/st黒蒼葉_通常_normal_m.png");
	CreateTextureSP("Ｃ/絵立ち絵弐", 511, 680, 145, "cg/st/m/st黒蒼葉_通常_normal_m.png");
	SetShade("Ｃ/絵立ち絵弐", MEDIUM);
	SetShade("Ｃ/絵背景弐", MEDIUM);
	Request("Ｃ/絵立ち絵", Smoothing);
	Request("Ｃ/絵背景", Smoothing);

	DrawDelete("絵黒幕", 300, 100, Dxl1, "slide_01_01_1", true);

	Wait(500);

	SetVolumeEX("SEL01", 150, 0, null);
	MoveCamera("Ｃ", 2000, 200, @0, @0, Dxl2, true);
	WaitAction("Ｃ", null);

	Wait(500);

	Fade("Ｃ/絵立ち絵弐", 500, 0, null, false);
	Fade("Ｃ/絵背景", 500, 0, null, true);

	Wait(800);

	Fade("Ｃ/絵立ち絵弐", 500, 1000, null, false);
	Fade("Ｃ/絵背景", 500, 1000, null, false);
	MoveCamera("Ｃ", 1000, -50, @0, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.Huh?

Just now&, that&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Delete("絵背景1*");

	MoveCamera("Ｃ", 800, 450, @0, @0, Dxl3, false);
	Fade("絵背景", 1000, 1000, null, true);
	Delete("Ｃ/絵*");
	Delete("Ｃ");
	Delete("絵背景");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
My eyes follow the back of a person in the crowd&.

Is that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
&.&.&.Me?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);


	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

$HALevel=3;
//※ずきんと頭が強く痛む
	HAFade(4000, 0,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 500, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/9000030a01">
"-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/m/bg304141_5_東江タワーパーティホール_m.jpg");
	CreateTextureEX("絵背景101", 101, Center, Middle, "cg/bg/m/bg304141_5_東江タワーパーティホール_m.jpg");
	CreateTextureEX("絵背景102", 102, Center, Middle, "cg/bg/m/bg304141_5_東江タワーパーティホール_m.jpg");
	CreateTextureEX("絵背景103", 103, Center, Middle, "cg/bg/m/bg304141_5_東江タワーパーティホール_m.jpg");

	SetShade("絵背景100", MEDIUM);

	MoveFTP1("@絵背景100",35000,10,5);
	MoveFTP2("@絵背景102",30000,20,15);
	MoveFTP3("@絵背景103",25000,3,4);
	MoveFTP4("@絵背景104",35000,2,10);

	Fade("絵背景1*", 10000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
A violent headache suddenly comes over me&, and my world 
starts to shake&.

{
	CreateSE("SE01","se人体_心臓_鼓動02L");
	MusicStart("SE01",8000,700,0,1000,null,true);
}
My vision blurs with the numerous after-images that 
flash under my eyelids&.

Noises repeat over and over like a broken record inside of my ears&, and soon all sound fades out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	HAFade(6000, 3,true);
	HAFade(6000, 3,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
My head pounded along to my heart&.

What&.&.&.?

My legs are strangely heavy&. They won't move&.

What's&.&.&. happening&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm52/9000040b01">
"Is he that precious?"

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/9000050a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Suddenly&, a voice reaches my ears&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm52/9000060b01">
"He is&, isn't he? I would know&, of course&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm52/9000070b01">
"Then&, have you ever thought about why he is so precious to you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/9000080a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
Who is he&.&.&.
I don't see him&, but I can hear him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	HAFade(6000, 3,true);
	HAFade(6000, 3,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
The pounding in my head&.&.&. It keeps getting worse&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm52/9000090b01">
"You really do know&, don't you? After all&, you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/9000100a01">
"&.&.&.Shut up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm52/9000110b01">
"But you've already decided&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm52/9000120b01">
"You should just keep pressing on like that&. As much as you desire&, until you're satisfied&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm52/9000130b01">
"No one can stop you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm52/9000140b01">
"No one can stop the real you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/9000150a01">
"Shut up!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 990);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1100,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se人体_動作_衣擦れ01");
	MusicStart("SE03",0,700,0,900,null,false);

	Delete("絵背景*");
	MoveFTP1stop();

	CreateTextureEXover("絵背景101", 101, -512, 0, "cg/ev/m/evf07プラチナジェイル笑顔_m.jpg");
	CreateTextureEX("絵背景100", 100, 0, 0, "cg/ev/m/evf07プラチナジェイル笑顔_m.jpg");
	Fade("絵背景101", 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Move("絵背景101", 200, -256, 0, Dxl1, false);
	Move("絵背景100", 200, -256, 0, Dxl1, false);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
I scream to try to erase the voice&, and the guests in the 
hall look at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE10","se環境_ガヤ_ざわつき01L");
	MusicStart("SE10",3000,700,0,2500,null,true);

	CreateTextureEXsub("絵背景102", 102, Center, Middle, "cg/ev/m/evf07プラチナジェイル笑顔_m.jpg");
	DrawEffect("絵背景102", 60000, "MiddleWave", 0, 1000, null);
	DrawEffect("絵背景101", 60000, "MiddleWave", 0, 1000, null);
	DrawEffect("絵背景100", 60000, "MiddleWave", 0, 1000, null);
	Fade("絵背景102", 5000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
&.&.&.He's smiling&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
His warped face&, looking right at me&.&.&.
It's smiling&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(800);

//※ぶつんと無音の世界が終わる

	SetVolumeEX("@dm*", 100, 0, null);
	SetVolumeEX("SE*", 100, 0, null);

	CreateColorEXadd("絵色白", 25000, "ffffff");

	FadeDelete("絵色白", 300, null, true);

//※次ファイル["dm5300.nss"]

}
