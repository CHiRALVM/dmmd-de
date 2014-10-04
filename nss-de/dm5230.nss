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


scene dm5230.nss_MAIN
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
	$GameName = "dm5240.nss";

	//▼頭痛レベル設定
	$HALevel=3;

}


scene dm5230.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm019",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304021_5_東江タワー前通りモブ");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	SetVolumeEX("@dm*", 2000, 0, null);

//※コイル着信

	//★コイル着信
	CreateSE("coilsound_phone_call","se物体_コイル_着信蒼葉");
	MusicStart("coilsound_phone_call",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
My Coil starts to ring&.

&.&.&.A call?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000010a01">
"&.&.&.Eh!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The one calling is&.&.&. Haga-san!?

But communication between Platinum Jail and the Old 
District should've been blocked&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I forced my way out of the pile of people&, moving as far 
away as I could&, and picked up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑧コイル電話設置
	//CoilPhone_OutcallSet(368,30,"ko0170","Delivery Works",false);
	CoilPhone_IncallSet(368,30,"dm5230","Haga-san",true);
	//■⑧コイル電話バグセット
	CoilBugSet();

	//▽⑧コイル電話バグ出現
	CoilBugFade();

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();
	//○コイル待ち
	CoilWait();

	Wait(1000);

	//▼⑧コイル電話出た
	CoilPhone_CallOn(@0,@0,"不明");

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000020a01">
"&.&.&.Haga-san!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@3,@5,"st羽賀_通常_normal2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//※加工：ノイズ混じり
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm52/3000030b07">
"&.&.&.Aoba-kun? &.&.&.I'm disguising my number as one from the
 mainland right now&. I'll try to talk for as long as I
 can&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000040a01">
"Haga-san&, are you all right? Right now they were just
 showing the Old Resident District&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//※加工：ノイズ混じり
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm52/3000050b07">
"Yes&. Just a few moments ago&, music started blasting
 throughout the entire town&, and somehow Platinum Jail
 intermediaries stationed themselves here&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000060a01">
"What about everyone else? Like Granny or Koujaku&, or
 Yoshie-san and the others&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//※加工：ノイズ混じり
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm52/3000070b07">
"Right now everyone is safe&. Just before the music started
 to play&, Tae-san told us to plug our ears&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000080a01">
"That's great to hear&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@3,@5,"st羽賀_通常_worry");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//※加工：ノイズ混じり
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm52/3000090b07">
"Are you okay as well&, Aoba-kun&.&.&.?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000100a01">
"I'm all right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@3,@5,"st羽賀_通常_normal2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//※加工：ノイズ混じり
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm52/3000110b07">
"Is that so? At any rate&, please don't do anything absurd
 by yourself&. We're thinking of a counter plan on our side&.
 We will do something before tomorrow&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//※加工：ノイズ混じり
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm52/3000120b07">
"It seems unlikely that we'll be able to do anything more
 today&, but I think Toue's main event is where he'll do
 something big&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//※加工：ノイズ混じり
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm52/3000130b07">
"We have that much time left&. So calm down&, Aoba-kun&, and
 don't take any action on your part&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	$CoilBugFade=1000;

	CreateSE("SE02","se擬音_効果_ノイズ01");
	MusicStart("SE02",0,700,0,0,null,false);
	CreateSE("SE01","se擬音_効果_ノイズ01L");
	MusicStart("SE01",8000,300,0,1000,null,true);
	Wait(200);

	$CoilBugFade=800;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//※加工：ノイズ混じり
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm52/3000140b07">
"If you do anything&, Tae-san and the others will be in
 tears&. Me too&, of course&. So&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//■⑩コイル電話エラーセット
	CoilPhone_ErrorSet(200,100);

	$CoilBugFade=800;

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE02","se擬音_効果_ノイズ01");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 200, 0, null);

//※コイル通信中→エラー
//覇：コイル演出は後回し

	//▼⑩コイル電話エラー表示
	$coilphoneError=true;
	CoilPhone_ErrorFade();
	//○コイル待ち
	CoilWait();


	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000150a01">
"Haga-san? Haga-san!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
&.&.&.The call dropped&.
I'll try to redial&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//■⑧コイル電話設置
	CoilPhone_OutcallSet(368,30,"dm5230b","Haga-san",false);
	//▼⑧コイル電話表示
	$coilphoneError=true;
	CoilPhone_CallFade();
	//○コイル待ち
	CoilWait();

	Wait(300);

	//■⑧コイル電話設置
	CoilPhone_OutcallSet(368,30,"dm5230c","Haga-san",false);
	//▼⑧コイル電話表示
	$coilphoneError=true;
	CoilPhone_CallFade();
	//○コイル待ち
	CoilWait();

	Wait(300);

	//■⑧コイル電話設置
	CoilPhone_OutcallSet(368,30,"dm5230d","Haga-san",false);
	//▼⑧コイル電話表示
	$coilphoneError=true;
	CoilPhone_CallFade();
	//○コイル待ち
	CoilWait();

//※演出：コイルエラー
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
It won't connect!
Shit!

{
	CreateSE("SE01","se環境_ガヤ_歓声01");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateSE("SE01","se環境_ガヤ_歓声03");
	MusicStart("SE01",3000,700,0,1000,null,true);
}
I give up on redialing&, and the noises of cheering all around 
clogged up my ears&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPhone",300,500,400);
	//○コイル待ち
	CoilWait();

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵一枚絵", 100, Center, Middle, "cg/ev/ev520東江演説a.jpg");
	CreateTextureSPadd("絵演出", 1200, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	Fade("絵演出", 0, 300, null, true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【東江】
<voice name="東江" class="東江" src="voice/dm52/3000160b02">
"I said this earlier&, but in Japan right now it is only the eve of tomorrow's true performance&. So please&, relax and
 be content for now&. &.&.&.I will be taking my leave&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 300, null);

	CreatePlainSP("絵板写", 5000);

	Delete("絵一枚*");
	Delete("絵演*");

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Toue grins and he and Sei are escorted back inside of the 
tower by their guards&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000170a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
As Toue left&, people cheered on for an encore&, but many 
were starting to trickle out&.

I stood in the middle in a daze and watched the people 
around me leave&.

My head is nearly blasted with those images of the Old 
Resident District and Haga-san's call&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//頭痛エフェクト(0)
	HAFade(2000, 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
And the headache becomes&.&.&. I don't even know what&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/3000180a06">
"Aoba&, we should go back to Glitter and rest&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000181a01">
"We don't have time for that&.&.&.!"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/3000182a06">
"Aoba&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/3000190a01">
"&.&.&.Sorry&. You're right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Ren's right&.

I need to get my thoughts in order&.

My impatience holds me down as I slowly make my way 
through the crowds&.

My feet feel heavy&.&.&. like they're clinging to the ground&.

But I feel like I'm out of reality&, walking on clouds&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(1000);

//※次ファイル["dm5240.nss"]

}
