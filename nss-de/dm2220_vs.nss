//<continuation number="280">
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


scene dm2220_vs.nss_MAIN
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
	$GameName = "dm2230_vs.nss";

}


scene dm2220_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302012_5_グリッター部屋02");
	FadeBG(0,true);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//以下、合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/2000010a03">
"Let go of me&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000020a01">
"Shut up&, move your feet instead of your mouth! Run!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I drag Noiz out of the room and move to go down the stairs&.

&.&.&.But&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(500,true);

//※ドアをぶち破られる音
	CreateSE("SE01","se物体_グリッター玄関_扉開く強く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(300,300,5,5,0,0,1000,Dxl1,true);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm22/2000030e42">
"Hey!"

{	Fw("fwmチンピラB_通常_normal");}
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm22/2000040e43">
"You're here aren't ya&, come out!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Breaking down the door with a devastating crash&, several 
men enter into Glitter&, yelling loudly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.Are these the same guys Noiz was fighting yesterday?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(500,true);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000050a01">
"Sure enough&, it's them&."

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/2000060a03">
"Who're they?"

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000070a01">
"They're the guys you sent flying yesterday&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/2000080a03">
"Aah&, that's some persistance&."

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000090a01">
"Didn't I tell you yesterday&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
//	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 990);

	OnBG(10,"bg302061_5_グリッター階段");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	FadeDelete("絵板写", 800, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I peek at the intruders&, trying to hide my presence&. 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/2000100a03">
"Not going down?"

{
	FwPro("fw蒼葉_通常_normal2",2800,"fw蒼葉_通常_angry");
//	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000110a01">
"If we go down&, we'd be caught on the spot&. We need to
 lower their numbers first&."

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/2000120a03">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	FwPro("fw蒼葉_通常_worry4",3950,"fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000130a01">
"You cooperate too&. Okay&.&.&. Let's go!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 0, 0, null);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", true);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 250, 100, null, "slide_04_01_1", true);

	SoundPlay("@dm009",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
The two of us dash down the stairs&.

When there are only ten steps left&, I grasp the handrail 
and kick my body forward&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低02");
	CreateSE("SE02","se戦闘_打撃_ヒット高01");

	CreateColorSP("絵色白", 4000, "FFFFFF");
	CreateTextureEX("絵EV", 2000, 0, Middle, "cg/ev/ev900蒼葉蹴り汎用.jpg");
	Request("絵EV", Smoothing);
	Move("絵EV", 0, -512, @0, null, true);
	Zoom("絵EV", 0, 2500, 2500, null, true);
	Fade("絵EV", 0, 1000, null, true);

	Move("絵EV", 400, 0, @0, Dxl1, false);
	Zoom("絵EV", 400, 1000, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色白", 100, 0, null, true);
	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵色白", 50, 1000, null, true);
	Delete("絵EV");

//	CreateSE("SE03","se人体_衝撃_転倒01");
//	MusicStart("SE03",0,700,0,1000,null,false);

	FadeDelete("絵色白", 50, null, true);

//	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000140a01">
"Uryah!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//	CreateSE("SE02","se戦闘_打撃_風切り高01");
//	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 4000, "FFFFFF");
	Fade("絵色白", 150, 1000, Dxl1, true);
	Wait(30);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵色白", 70, Dxl1, true);

	Fw("fwmチンピラA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【チンピラＡ】
<voice name="チンピラＡ" class="チンピラＡ" src="voice/dm22/2000150e42">
"Guaah!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_衝撃_転倒02複数");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
I hit the man's face at the base of the stairs with my 
knee&. The man falls on his back&, and the guy behind him 
is crushed under him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmチンピラB_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm22/2000160e43">
"You asshole!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000170a01">
"Hah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_動作_跳躍高01");

	CreateTextureEX("絵ＥＶ", 1100, -361, -268, "cg/ev/ev920ノイズ突進.jpg");
	Request("絵ＥＶ", Smoothing);
	Zoom("絵ＥＶ", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＶ", true, 2, 200, 30, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵ＥＶ", 0, 1000, null, false);
	Move("絵ＥＶ", 200, 0, 0, Dxl1, false);
	Zoom("絵ＥＶ", 200, 1000, 1000, null, true);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵ＥＶ*");
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
When the downed man makes an attempt to stand up&, Noiz 
bashes him with his knuckles&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se人体_衝撃_転倒01");
	MusicStart("SE03",0,700,0,1000,null,false);

	Fw("fwmチンピラB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【チンピラＢ】
<voice name="チンピラＢ" class="チンピラＢ" src="voice/dm22/2000180e43">
"Uagh!"

{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/2000190a03">
"So irritating&. Let's go already&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000200a01">
"You're the one who made this mess!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
Anyway&, we have to get outside&.&.&.!

Making our escape&, we rush at them together&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※どか、ばきっとケンカしてる音
	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色黒", 4000, "BLACK");
	Fade("絵色黒", 150, 1000, Dxl1, true);
	Wait(30);

	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev900蒼葉蹴り汎用.jpg");
	FadeDelete("絵色黒", 70, Dxl1, true);

//	CreateSE("SE01","se戦闘_打撃_ヒット低02");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	CreateColorSPadd("絵色白", 4000, "FFFFFF");
//	Wait(30);
//	Delete("絵ＥＶ*");
//	FadeDelete("絵色白", 70, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000210a01">
"Orrryah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("絵色黒", 4000, "BLACK");
	Fade("絵色黒", 150, 1000, Dxl1, true);
	Wait(30);
	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev920ノイズ突進a.jpg");
	FadeDelete("絵色黒", 70, Dxl1, true);

//	CreateSE("SE02","se戦闘_打撃_ヒット高04");
//	MusicStart("SE02",0,700,0,1000,null,false);
//	CreateColorSPadd("絵色白", 4000, "FFFFFF");
//	Wait(30);
//	Delete("絵ＥＶ*");
//	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/2000220a03">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット複数01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵ＥＶ");
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se戦闘_打撃_ヒット高04");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵ＥＶ*");
	FadeDelete("絵色白", 70, null, true);

{	Fw("fwmチンピラC_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【チンピラＣ】
<voice name="チンピラＣ" class="チンピラＣ" src="voice/dm22/2000230e44">
"Uuoh! Shit&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※遠くからパトカーのサイレン、ブレーキ音
	CreateSE("SE11","se乗物_パトカー_サイレン01L");
	MusicStart("SE11",0,10,0,1000,null,true);
	SetVolumeEX("SE11", 2000, 700, null);

	Wait(1000);

//※ＳＥ：どたどたと警官たちが近付いてくる

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000240a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/2000250a03">
"Tch&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_足音_走る04複数");
	MusicStart("SE01",0,10,0,1000,null,false);
	SetVolumeEX("SE01", 400, 700, null);

	SetVolume("SE11", 500, 0, null);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
We fail to slip out&, the threatening sirens and footsteps 
approaching us&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolume("SE01", 200, 0, null);
{	Fw("fwm警官C_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【警官Ａ】
<voice name="警官Ａ" class="警官Ａ" src="voice/dm22/2000260e15a">
"Hey&, you there! What are you doing!"

{	FwPro("fw蒼葉_通常_rage",2550,"fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/2000270a01">
"Agh&, come on&, damn! Noiz let's go!"

{	Fw("fwmチンピラC_通常_normal");}
//【チンピラＣ】
<voice name="チンピラＣ" class="チンピラＣ" src="voice/dm22/2000280e44">
"Wait&, you bastards!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 0, null);
	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 250, 100, Dxl1, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Successfully dodging the guys who persistently throw 
themselves at us&, we go out through the front door&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//※次ファイル["dm2230_vs.nss"]

}
