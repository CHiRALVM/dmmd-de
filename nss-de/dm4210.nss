//<continuation number="140">
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


scene dm4210.nss_MAIN
{

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("hime0250","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0270","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0280","Captive Princess","Please save me",true,false);
	CoilMailAdd("hime0290","Captive Princess","Please save me",true,false);
	CoilMailAdd("dm0480a","Captive Princess","Please save me",true,true);
	CoilMailAdd("dm1030a","Haga-san","Secret path to Platinum Jail",true,true);

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

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("dm4210a","Clear","Here",true,true);

	//▼背景CG
	#bg302051_5_グリッターエントランス壁側=true;
	#bg302012_5_グリッター部屋02=true;
	#bg302061_5_グリッター階段=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4220.nss";

}


scene dm4210.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The next day&.

It's always night time&, but in reality it's about noon&.

When I wake up&, I pick up Ren and leave the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg302031_5_グリッターバーカウンター");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302021_5_グリッター居間.jpg");
	FadeDelete("絵板写", 500, null, true);

	Wait(500);

	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I go into the living room and open the fridge by the bar 
counter for something to drink&.

Inside it are some ingredients and fruits&.

Clear did say that he was given some things at that 
supermarket yesterday&.

Oh yeah&, what is Clear up to anyway?
Is he awake yet?

I bite into a fruit for breakfast instead and go to peek 
into Clear's room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg302012_5_グリッター部屋02");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302041_5_グリッター廊下.jpg");

	FadeDelete("絵板写", 500, null, true);

	Wait(500);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵背景", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
&.&.&.No one's in there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(500,true);

	Wait(500);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302061_5_グリッター階段.jpg");
	#bg302051_5_グリッターエントランス壁側=true;

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I lean over the handrail and look around the first floor&.
But it doesn't seem like anyone's there either&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景", 500, null, true);
	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/1000010a01">
"Where did he go?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm42/1000020a06">
"Clear went out earlier&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/1000030a01">
"He left?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//覇：以下コイル演出は後回し

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
We messed with yakuza yesterday&, so I have a bad feeling 
about this&.&.&.

{
	//★コイル着信
	CreateSE("coilsound_phone_call","se物体_コイル_着信蒼葉");
	MusicStart("coilsound_phone_call",0,700,0,1000,null,true);
}
I think about contacting him&, and while I do&, my Coil 
starts to ring&.

It's Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	Wait(1000);
//	CreateSE("SE01","se物体_コイル_操作音01");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	Wait(500);

//	$SYSTEM_skip=false;

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑧コイル電話設置
	CoilPhone_IncallSet(368,30,"dm4210","Clear",false);

//	WaitKey();

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();
	//○コイル待ち
	CoilWait();

	Wait(1000);

	//▼⑧コイル電話出た
	CoilPhone_CallOn(@0,@0,"stクリア_正面マスクあり_normal");


//	$SYSTEM_skip=false;

//	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//※コイル電話
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/1000040a04">
"Hello? Is this Master?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
He's speaking softly&.
He's talking like that on purpose&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/1000050a01">
"Clear&, where are you right now?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/1000060a04">
"Please listen to me&, Master&. I've somehow gotten inside
 Oval Tower&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/1000070a01">
"&.&.&.Eh?"

{	DeleteFw();}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/1000080a04">
"I've successfully infilitrated the building&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/1000090a01">
"You got in?"

{	DeleteFw();}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/1000100a04">
"Yes&. I'll send you a map showing you the routes to take&,
 so please come here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@10,@10,"stクリア_通常マスクあり_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/1000110a04">
"It'll be dangerous if I'm spotted&, so I must hang up now&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/1000120a01">
"Eh? Wait&, hey&, Clear!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//▼⑧コイル電話終了
	CoilPhone_End();

//	Wait(300);
//	CreateSE("SE01","se物体_コイル_操作音01");
//	MusicStart("SE01",0,700,0,1000,null,false);

	//■②メールNEW設置『CoilNewSet(X位置,Y位置)』
	CoilNewSet(400,100);

	//●『汎用』コイル移動２『CoilMove2(移動パターン,"指定のコイル名",時間,移動X,移動Y,テンポ,待ち)』//※移動は絶対のみ
	CoilMove2(2,"CoilPhone",500,150,150,Dxl1,false);

	//▼②メールNEW表示
	CoilNewFade();

	//待ち
	CoilWait();//WaitKey(16);

	Wait(500);

	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(344,90);

//	CreateSE("SE01","se物体_コイル_操作音02");
//	MusicStart("SE01",0,700,0,1000,null,false);

	//▼③メールリスト表示２（メールNEWからの遷移）
	CoilMListFade_New();

	//○③新規メール追加//dm1340a
	CoilMailAdd2("dm4210a","Clear","It's here",true);

	//待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Right after he hangs up on me&, I receive a message from 
him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	//●『汎用』コイル移動１『CoilMove("指定のコイル名",時間,移動X,移動Y,テンポ,待ち)』//※移動は絶対でも相対でもＯＫ
	//CoilMove("CoilMList",300,@200,@-80,Dxl1,true);

	//■④メール設置『CoilMailSet("メールナット名",X位置,Y位置)』
	//CoilMailSet("dm4210a",314,120);
	CoilMailSet("dm4210a",390,200);

	//●『汎用』コイル移動２『CoilMove2(移動パターン,"指定のコイル名",時間,移動X,移動Y,テンポ,待ち)』//※移動は絶対のみ
	CoilMove2(2,"CoilMList",500,550,30,Dxl1,false);

	//▼④メール表示１（通常表示）
	//CoilMailFade();
	//▼④メール表示２（メールリストからの遷移）『CoilMailFade_MList("メールナット名",秒数)』
	CoilMailFade_MList("dm4210a",500);


	//待ち
	CoilWait();

	Wait(500);

	//■⑤ダウンロード設置『CoilDownSet(X位置,Y位置)』
	CoilDownSet(200,50);

	//▼⑤ウンロード表示１（通常表示）
	//CoilDownFade();
	//▼⑤ウンロード表示２（メールからの遷移）
	CoilDownFade_Mail();

	//○⑤ウンロードスタート『CoilDownStart(秒数)』
	CoilDownStart(5000);

	//○⑤ウンロード完了
	CoilDownComp();

	//待ち
	CoilWait();


//	CoilMove("CoilPict",300,@200,@-80,Dxl1,true);
//	CoilMailSet("dm4210a",500,150);
//	CoilPictSet(344,50,"cg/ef/efマップ間違いタワー_クリア.jpg");
	CoilPictSet(304,50,"cg/ef/efマップ間違いタワー_クリア.jpg");

	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CoilPictFade_Down();

	CoilWait();

	Wait(1500);

//コイルメールボックス表示
//差出人：クリア
//件名：ここです
//本文：⇒ナット名：dm4210a
//なし

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
&.&.&.The picture he sends looks like a kid's drawing&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/1000130a01">
"I don't know if I can do this&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CoilAllDelete(300,-50,370);

	CoilWait();

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
But really&, I wonder if he actually got into Oval Tower&.

Was it that easy of a thing to do?

But it is Clear&, after all&.&.&.

I don't know how in the world he did it&, but it makes me 
feel uneasy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/1000140a01">
"Anyway&, let's go&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
I put Ren in my bag and leave Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//※次ファイル["dm4220.nss"]

}
