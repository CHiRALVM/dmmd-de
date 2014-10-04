//<continuation number="130">
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


scene dm5110.nss_MAIN
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
	#ev026蓮メンテc=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5120.nss";

}


scene dm5110.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -111, -440, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");

	Delete("上背景");

	CreateTextureEX("絵ＥＶ102", 102, -250, -520, "cg/ev/m/ev026蓮メンテc_m.jpg");
	Move("絵ＥＶ102", 1000, -250, -449, Dxl1, false);
	Fade("絵ＥＶ102", 1000, 1000, null, true);

	CreateTextureSP("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev026蓮メンテc.jpg");

//===========================================
//以下、合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
It's Ren's paw&. Rejecting me&, Ren places both of his tiny 
paws on my forehead and gently pushes me away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ102", 1000, -250, -268, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/1000010a01">
"What is it?"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/1000020a06">
"No&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵ＥＶ102", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Ren doesn't lower his paws&.

What's wrong?
He's never done anything like this before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1100,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("絵ＥＶ101", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I move the oddly acting Ren away from my face&, his eyes 
looking into mine&.

&.&.&.Really&, what's going on?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/1000030a01">
"Is it because of the damage you received from Rhyme?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/1000040a06">
"That may be the reason&.&.&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/1000050a01">
"Really? But you're acting kinda strange&, you know?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/1000060a06">
"I just feel a little out of it&, that's all&.
 I'm all right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Ren gives me a vague response&, trying to dodge the 
question&.

This is the first time he's ever tried to avoid talking 
about anything&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/1000070a06">
"I'm sorry if I'm worrying you&. Please don't think about it too much&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/1000080a01">
"Even if you say that&.&.&. You're acting weird&. I think I'll
 look for a parts shop around here&. I don't know if there are
 any&, though&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/1000090a06">
"You really don't need to worry that much&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/1000100a01">
"If you can't function any more after this&, it'll be bad&,
 won't it? We have to treat it like a disease&. Okay?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I say that in a steadfast tone and ruffle Ren's fur&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_コミカル_プニプニ01");
	MusicStart("SE01",0,600,0,1300,null,false);

	Fw("fw蒼葉_通常_laugh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/1000110a01">
"Fluffy puppy!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/1000120a06">
"Please don't play around&."

{	Fw("fw蒼葉_通常_cheese");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/1000130a01">
"Haha&, sorry&, sorry!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Even as I pretended to joke around&, the shock still didn't fade&.

For Ren to push my forehead away like that&.&.&. I honestly 
never saw it coming&. But I guess it's because something 
must be really wrong with him&.&.&.

Is it really okay&.&.&.?

Unable to shake the uneasiness from my heart&, I put Ren in my bag and turn toward the entryway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(500);

//※次ファイル["dm5120.nss"]

}
