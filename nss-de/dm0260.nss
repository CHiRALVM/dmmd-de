//<continuation number="230">
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


scene dm0260.nss_MAIN
{
	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("chara0010","Haga-san","About what I asked for",true,true);
	CoilMailAdd("chara0020","Koujaku","This Sunday",false,true);
	CoilMailAdd("chara0030","Mizuki","How are you?",false,true);
	CoilMailAdd("chara0040","Granny","Dinner",false,true);
	CoilMailAdd("chara0050","Koujaku","About then",false,true);
	CoilMailAdd("hime0010","Captive Princess","Please save me",true,true);

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
	#ev026蓮メンテ=true;
	#ev026蓮メンテa=true;

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("spm0040","＊＊＊","New Allmate models soon for sale! Pre-orders will begin tomorrow!",true,true);

	//○③メール既読化（リストが出ていないとき）
	CoilMListOnRead("spm0040");


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($START0010==1){	$GameName = "dm0260sl.nss";
	}else {		$GameName = "dm0261.nss";
	}

}


scene dm0260.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(0,true);

	CreateSE("SE01","se物体_蒼葉自室窓_開閉01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I shut the door leading to the veranda and return to the 
room&, lower Ren to the bed and lay down next to him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	Wait(500);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000010a01">
"Rhyme&.&.&. huh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Did I encounter a Drive-Byer after all?

When it happened&, Ren appeared in his online mode form&. He 
also fought according to my instructions&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000020a01">
"&.&.&.Something&, set&. &.&.&.What was it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
During the Rhyme&, my mouth moved on its own like somebody 
had taken over my body&. What was that?

But that feeling&.&.&. I feel like I know it&.

I don't know why I think so but&, it's like&.&.&.

It resembled a feeling that I have when I invite customers 
to the store&.&.&.

That feeling when I know what to say to make the other do 
what I want&.

Have Drive-Byers always appeared so frequently? Let's do 
a little research&.

Although I don't want to get involved too deeply&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_受信蒼葉");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.A message&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//コイルメールボックス表示
//差出人：＊＊＊
//件名：最新型のオールメイトついに発売！　明日先行予約開始！
//本文非表示

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(344,90);

	//▼①コイル演出表示
	CoilStartFade();
	//▼③メールリスト表示１（通常表示）
	CoilMListFade();

	//待ち
	CoilWait();

	//○③新規メール追加//dm1340a
	CoilMailAdd2("spm0040","＊＊＊","New Allmate models soon for sale! Pre-orders will begin tomorrow!",true,false);

	//待ち
	CoilWait();

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000030a01">
"The latest Allmate models&, huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
It was a direct message&.

New Allmates appear one after another&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilMList",300,-50,370);
	//○コイル待ち
	CoilWait();

//	CoilMListDelete();

	//待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I briefly look over the contents then close the Coil 
screen&.

I've always been so attached to things that I never want 
to give them up&, but not everyone else is like that&.

&.&.&.That's right&. I have to check Ren's condition&.
I'm worried about the damage he took in Rhyme&.

{
	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1400,null,false);

	CreateTextureEX("絵背景110", 110, 0, -556, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	Move("絵背景110", 500, 0, -572, Dxl1, false);
	Fade("絵背景110", 500, 1000, null, true);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}

I get up and reseat myself on the bed&, put the blue 
lump on my knees&, and start him up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm013",0,450,true);

	Wait(500);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6000040a06">
"Aoba&."

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000050a01">
"Good morning&."

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6000060a06">
"Good morning&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000070a01">
"I'll examine you a bit now&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049]
Because Ren is an old model&, restoration would be trouble 
if full-scale malfunction appeared&.

He has to be frequently maintained and checked&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I hold a long cable starting from the desktop computer 
and push aside Ren's neck fur to connect the cable to the  port&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※コイル_タッチブラウザを起動し、蓮のエンジンを監視するインターフェイスを表示

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑪蓮メンテ
	CoilRenSet(382,150);

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑪蓮メンテ表示
	CoilRenFade();

	//待ち
	CoilWait();//WaitKey(16);

	//○⑪蓮メンテスタート
	CoilRenStart();

	Wait(2000);

	//○⑪蓮メンテ完了
	CoilRenComp();

	Wait(500);

	//×⑤⑪蓮メンテ収納
	$coilintoON=true;
	CoilRenDelete();

	//○コイル待ち
	CoilWait();

	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	//CoilAllDelete(300,400,350);

	//蓮メンテ：メインフレーム開く：通常
	SetOpenMaintenance(1);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I start up a touch browser with the Coil and the 
interface that supervises Ren's engine is displayed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//蓮メンテ：サブモニター開く(1か2)
	SetOpenSubMaintenance(1);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000100a01">
"Hm&.&.&. Maybe the reaction speed of the reflection's
 decreased bit&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア_鍵回す01");
	MusicStart("SE01",0,700,0,1800,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
I grab a tool box that I'd thrown on the floor&, remove 
the lid&, take out a 10cm square screwdriver&, and push asideRen's fur again&.

Although Allmates can fundamentally be fixed through the 
touch browser's control panel&, Ren is an old model&, and I 
need to look inside of him too&.

I take a stock of new chips out of the tool box and use 
tweezers to replace Ren's old chip with a new one&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//蓮メンテ：閉じる
	CloseMaintenance();

	CoilNewDelete(400,100);

	//待ち
	CoilWait();

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000110a01">
"This should be enough&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I close the lid and control panel&, remove the cable and 
lift Ren into my arms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ110", 110, Center, Middle, "cg/ev/ev026蓮メンテ.jpg");
	Fade("絵ＥＶ110", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000120a01">
"How is it? Any place you're not feeling well?"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6000130a06">
"&.&.&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000140a01">
"Hm?"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6000150a06">
"There is some sense of incongruity&. However&, it's within   the allowable range&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000160a01">
"I see&. Well&, I only changed the chip&. Tell me right away   if any malfunction appears&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6000170a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ112", 112, -250, -268, "cg/ev/m/ev026蓮メンテa_m.jpg");
	CreateTextureEX("絵ＥＶ111", 111, -250, -205, "cg/ev/m/ev026蓮メンテ_m.jpg");

	Move("絵ＥＶ111", 1000, -250, -268, Dxl3, false);
	Fade("絵ＥＶ111", 1000, 1000, Dxl1, true);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,500,0,1000,null,false);
	SetVolumeEX("SE*", 900, 0, null);

	Fade("絵ＥＶ112", 1000, 1000, null, true);
	Delete("絵ＥＶ110");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I stroke Ren's back as he answers me&, and I place my 
forehead to his tiny one&.

I forget how long it's been since we started to do this&, 
but I make sure to do this every time I do maintenance on 
Ren&. It's like a charm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000180a01">
"Thank you&, as always&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6000190a06">
"The pleasure is mine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000200a01">
"I'll count on you in the future&, too&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6000210a06">
"The pleasure is mine&."

{
	Fade("絵ＥＶ112", 500, 0, null, true);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/6000220a01">
"&.&.&.You always answer like that&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/6000230a06">
"Is it strange?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0260sl.nss"]※他ＥＤクリア後出現
//※次ファイル["dm0261.nss"]

//	ClearFadeAll(1000, true);

}
