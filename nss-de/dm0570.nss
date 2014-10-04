//<continuation number="90">
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


scene dm0570.nss_MAIN
{
	//▼⑦コイル着歴移動（リストなし）
	CoilReceAdd("dm0001","Home",true);
	CoilReceAdd("dm0002","Haga-san",true);
	CoilReceAdd("dm0320","Delivery Works",true);
	CoilReceAdd("dm0570_01","Koujaku",false);
	CoilReceAdd("dm0570_02","Koujaku",false);
	CoilReceAdd("dm0570_03","Koujaku",false);
	CoilReceAdd("dm0003","Haga-san",false);
	CoilReceAdd("dm0570_04","Koujaku",false);
	CoilReceAdd("dm0570_05","Koujaku",false);
	CoilReceAdd("dm0570_06","Koujaku",false);
	CoilReceAdd("dm0570_07","Koujaku",false);
	CoilReceAdd("dm0570_08","Koujaku",false);

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


	CoilReceAdd("dm0570_11","紅雀",true);
	CoilReceAdd("dm0570_12","紅雀",true);


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0580.nss";

}


scene dm0570.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg106021_5_廃ビル部屋");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================
//★『徒歩コイル確認』（演出補強箇所）

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑨コイル着信ありセット
	CoilPhone_MissSet(368,30);
	//■⑦コイル着歴設置
	CoilPhone_RaceSet(368,30);

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑨コイル着信あり表示
	CoilPhone_MissFade();

	//○コイル待ち
	CoilWait();

	Wait(500);

//cono「演出：コイル演出入る際にはこちらのwaitは消してください」
	//Wait(1000);

//※演出：コイル演出

	//▼⑦コイル着歴表示
	CoilPhone_RaceFade();

	//▼⑦コイル着歴追加
	//$CoilReceSoon=true;
	CoilReceAdd2("dm0570_11","Koujaku",false);


	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/7000010a01">
"Whoa&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
My log starts to fill up with recieved messages like 
raging waves&. 

{
	//▼⑦コイル着歴移動
	CoilRaceMove("dm0570_01",2000);
}
They're all from Koujaku&.

I redial him&, flustered&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※コイル_紅雀、１コールで電話に出る

//cono「演出：コイル演出入る際にはこちらのwaitは消してください」
//	Wait(1000);

//※加工：コイル通話

	//▼⑦コイル着歴移動
	CoilRaceMove("dm0570_11",1000);

	//■⑧コイル電話設置
	CoilPhone_OutcallSet(368,30,"dm0570_12","Koujaku",false);
	//CoilPhone_IncallSet(200,50,"ko0170","Delivery Works",false);

	//★コイル着信
	//CreateSE("coilsound_phone_call","se物体_コイル_着信蒼葉");
	//MusicStart("coilsound_phone_call",0,700,0,1000,null,true);

	//▼⑧コイル電話表示
	CoilPhone_CallFade();
	//○コイル待ち
	CoilWait();

	Wait(1700);

	//▼⑧コイル電話出た
	CoilPhone_CallOn(@0,@0,"st紅雀_通常_shout");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm05/7000020a02">
"Aoba!?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/7000030a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"st紅雀_通常_angry4");

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm05/7000040a02">
"You&.&.&. Where have you been!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/7000050a01">
"Sorry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"st紅雀_通常_worry");

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm05/7000060a02">
"I was so worried&, you weren't picking up at all!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_sad",2850,"fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/7000070a01">
"Some things happened&.&.&. But I'm going home now&, so we'll
 talk later&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"st紅雀_通常_cool");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//※加工：コイル通話
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm05/7000080a02">
"Got it&. I'm at Heibon right now&, so go there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/7000090a01">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	//▼⑧コイル電話終了
	CoilPhone_End();

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPhone",300,-50,370);
	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	//CoilAllDelete(300,-50,370);
	//○コイル待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Hearing Koujaku's voice bounced me back to reality in an 
instant&.

With Dry Juice and Granny gone&, and even being dragged 
here&.&.&.

Outrageous things keep happening one after the other&, and  by now I'm feeling numb to it&. But this is reality&. 

And they'll keep happening&.

&.&.&.I should go&.

I took some of my meds for my headaches&, picked up my bag&, and left the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	ClearFadeAll(1000, true);
	Wait(1500);

//※次ファイル["dm0580.nss"]

}
