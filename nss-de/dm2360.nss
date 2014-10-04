//<continuation number="100">
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


scene dm2360.nss_MAIN
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
	#evf03防衛ＡＭ立ちふさがる=true;
	#evf03防衛ＡＭ立ちふさがるa=true;

	#bg304062_5_東江タワー階段別アングル=true;
	#bg304131_5_東江タワー東江の間前廊下=true;

	//▼演出処理を初期化
	Request("@EFWIN/SE11", UnLock);
	$CautionAlarm=false;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2370.nss";

}


scene dm2360.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	if($CautionAlarm==true){
	}else{
	CreateSE("@EFWIN/SE11","se物体_東江タワー_アラーム01L");
	Request("@EFWIN/SE11", Lock);
	MusicStart("@EFWIN/SE11",0,200,0,1000,null,true);
	$CautionAlarm=true;
	}

	PrintBG("上背景", 30000);

	OnBG(10,"bg304052_5_東江タワー研究エリア廊下02");
	FadeBG(0,true);

	SoundPlay("@dm007a",0,450,true);

	FadeDelete("上背景", 0, null, true);

	Request("@EFWIN/SE11", UnLock);
	SetVolumeEX("@EFWIN/SE11", 1000, 0, null);

//※防衛オールメイトが歩いてくる音
	CreateSE("SE01","se動物_足音_歩く防衛01");//あきゅん「ＳＥ：se動物_足音_歩く防衛01」
	MusicStart("SE01",0,1000,-300,1000,null,false);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/6000010a06">
"Aoba&, behind you&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/6000020a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateTextureSP("絵ＥＶ", 1100, 0, 0, "cg/ev/l/evf03防衛ＡＭ立ちふさがる_l.jpg");

	Move("絵ＥＶ", 300, -496, 0, Dxl1, false);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_03_1", true);

	SetVolumeEX("@dm*", 1000, 0, null);
	SoundPlay("@dm008",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
&.&.&.When I look over my shoulder&, I see one of the dog 
Allmates standing there&.

It's over for me if I get hit by one of those beams&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/6000030a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("絵ＥＶ");

	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_03_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I bolted down the hallway&.

I didn't care about the burn on my side&.

{	CreateSE("SE20","se動物_足音_歩く防衛01L");
	MusicStart("SE20",500,700,0,1000,null,true);}
I could hear the dog's footsteps following after me&.

Quickly&.&.&.
I need to find somewhere to hide&.&.&.!

I run desperately and eventually see the elevator door&.

I nearly jump to the door and press a button&.

Quickly&.&.&.
Quickly&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
//※SE：ぽーんと到着する

	SetVolumeEX("SE20", 1000, 0, null);

	CreateSE("SE05","se物体_エレベータ_電子音01");
	MusicStart("SE05",0,700,0,1000,null,false);

	CreateSE("SE06","se物体_ドア東江自動_扉開く01");
	MusicStart("SE06",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	OnBG(10,"bg304072_5_東江タワーエレベーター");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 250, 100, null, "slide_01_03_0", true);

	SetVolumeEX("SE01", 1500, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
The elevator door opened and I ran into it&.

I could see the dog Allmate right before the door closed&.

I'm saved&.&.&.

{	CreateTextureEX("bg_el2", 10000, -1000, middle, "cg/bg/l/bg304072_5_東江タワーエレベーター_l.jpg");
	Fade("bg_el2", 300, 1000, null, true);
	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);}
I pressed the button to the top floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se物体_エレベータ_駆動01L");
	MusicStart("SE02",1000,700,0,1000,null,true);

	Wait(3000);
	SetVolumeEX("SE*", 1500, 0, null);
	CreateSE("SE03","se物体_エレベータ_電子音01");
	MusicStart("SE03",0,700,0,1000,null,false);
	FadeDelete("bg_el2", 1000, null, true);
	Wait(500);
	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The elevator comes to a quiet stop and the door opens&.

Before I can take a single step forward&.&.&. I freeze&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/6000040a01">
"Shit! &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE20", 500, 0, null);

	CreateSE("SE01","se物体_ドア東江自動_扉開く無理やり01");//あきゅん「ＳＥ：se物体_ドア東江自動_扉開く無理やり01」
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,20,2,0,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I stick my fingers into the gap between the doors and try to slide them open&.

The door is unbearably heavy&, but I'm able to open it a little bit&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg304062_5_東江タワー階段別アングル");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I slip through the crevice between the door and go inside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se物体_ドア東江自動_扉開く無理やり01");//あきゅん「ＳＥ：se物体_ドア東江自動_扉開く無理やり01」

	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 300, 100, null, "slide_02_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
I have to pry open another door on the top floor&.

&.&.&.But&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//	OnBG(10,"bg304051_5_東江タワー研究エリア廊下01");
//	FadeBG(0,true);

	CreateTextureSP("絵背景15", 15, Center, Middle, "cg/bg/bg304051_5_東江タワー研究エリア廊下01.jpg");
	Rotate("絵背景15", 0, @0, @180, 0, null, true);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureSP("絵ＥＶ", 1100, 0, 0, "cg/ev/l/evf03防衛ＡＭ立ちふさがるa_l.jpg");

	CreateSE("SE01","se動物_足音_歩く防衛01L");

	MusicStart("SE01",0,700,0,1000,null,true);

	Move("絵ＥＶ", 300, -496, 0, Dxl1, false);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	SetVolumeEX("SE01", 2000, 0, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
This again&.

The dog Allmate is&.&.&.

And this time its mouth is open&, with the thin iron pipe 
pointed out&.

What do I do now&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：ノイズをフラッシュバック」
//あきゅん「ＳＥ：se擬音_回想_フラッシュバック01」
//	CreateSE("SE01","se擬音_回想_フラッシュバック01");
//	MusicStart("SE01",0,700,0,1000,null,false);
	EfRecoIn1(10000,200);

	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev920ノイズ突進.jpg");

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
At that moment&, something crosses my mind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵ＥＶ");

	EfRecoOut2(400);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/6000050a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE20", 1000, 0, null);


//嶋：うざくなければカットインキューブ：犬のアップぐらいやってもいいか

	CreateSE("SE01","se戦闘_剣撃_風切り高01");//あきゅん「ＳＥ：se戦闘_剣撃_風切り高01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Right before the Allmate fires its beam&, I throw Noiz's 
cube into the dog's mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE20","se戦闘_メガ砲_チャージ01");
	MusicStart("SE20",0,700,0,1000,null,false);

	Wait(500);

	SetVolumeEX("SE20", 500, 0, null);

//※ぼふっと篭った暴発音
//あきゅん「ＳＥ：se戦闘_衝撃_爆発小01」
	CreateSE("SE01","se戦闘_衝撃_爆発小01");//あきゅん「ＳＥ：se戦闘_衝撃_爆発小01」

	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainEX("絵板写", 100);

	Wait(16);
	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	Zoom("絵板写", 0, 1200, 1200, null, true);
	FadeFR2("絵板写",0,500,150,0,0,50,null, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	Fade("絵板写", 150, 0, null, false);
	FadeDelete("絵フラッシュ白", 100, null,true);

	SetVolumeEX("SE01", 100, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
It sounds like something exploded&, and the dog wriggles 
around and steps back&.

{	CreateSE("SE02","se擬音_精神_煙る01");
	CreateSE("SE03","se人体_衝撃_転倒02");
	MusicStart("SE02",0,500,0,600,null,false);
	MusicStart("SE03",0,500,0,600,null,false);}
It squirms for a little bit at first&, but smoke starts to  rise out of its mouth&.

&.&.&.Did it work?

I go up to the dog and check&.

It looks like it's completely blown&. I don't see any 
indication of it being activated&.

Noiz's cube tumbles to the floor&. The lights in its eyes 
flicker&.

I pick it up and it starts to talk&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fwAMウサギモドキ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm23/6000060c09">
"&.&.&.Reading twenty-four&, error&.&.&. received&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Looks like it broke when the beam discharged&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAMウサギモドキ_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm23/6000070c09">
"&.&.&.Noiz&.&.&. takes&.&.&. 58 points&.&.&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/6000080a01">
"&.&.&.Noiz? Are you here? Where are you?"

{	Fw("fwAMウサギモドキ_通常_normal");}
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm23/6000090c09">
"This- floor&.&.&. center&.&.&. big room&.&.&. 83&, declining&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
The power cuts off&. The light in the cube goes dim&, 
eventually fading out completely&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/6000100a01">
"&.&.&.Thank you&. I'll definitely find Noiz&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「ＳＥ：se人体_動作_抱く01」
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I muster all of my strength at the last minute and stuff   the cube into my jacket pocket&.

I pass over the dog Allmate and head inside&.

Noiz is in the center of a big room&.&.&.

I need to hurry&.

My side feels as painful as ever&, but I don't notice it 
much&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「確認：場所どこだっけー」
//中ホール前かな（千代子
//	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
//	MusicStart("SE01",0,700,0,1000,null,false);

//	SoundPlay("@dm018",0,450,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304131_5_東江タワー東江の間前廊下");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I walk down the hallway and suddenly see a door&.

It's more elegant than any of the other doors&. It must be 
a hall or something&.

Is Noiz in there&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateTextureEX("絵背景", 100, Center, -570, "cg/bg/l/bg304131_5_東江タワー東江の間前廊下_l.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Fade("絵背景", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I quickly go up to the door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se物体_ドア東江の間_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	DrawTransition("絵色白", 1000, 0, 200, 100, null, "cg/data/slide_06_00_1.png", true);
	DrawTransition("絵色白", 1000, 200, 400, 100, null, "cg/data/slide_06_00_1.png", true);
	DrawTransition("絵色白", 1000, 400, 1000, 100, null, "cg/data/slide_06_00_1.png", true);
	Wait(1000);

	WaitPlay("SE01", null);

//※次ファイル["dm2370.nss"]

}
