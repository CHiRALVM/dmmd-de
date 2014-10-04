//<continuation number="210">
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


scene dm5100.nss_MAIN
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
	#ev026蓮メンテb=true;
	#bg302011_5_グリッター部屋01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5100sl.nss";

}


scene dm5100.nss
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

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The room is small and minimalistic with a refined feeling&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000010a01">
"Well then&. I have to examine Ren&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1100,null,false);

	CreateTextureEX("絵背景100", 100, -111, -385, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");
	Move("絵背景100", 500, -111, -440, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

	CreateSE("SE02","se人体_動作_衣擦れ03");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I sit down on the bed and take Ren out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※コントロールパネル操作
//覇：コイル操作は後回し

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
	CoilWait();

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

	//蓮メンテ：メインフレーム開く：エラー	
	SetOpenMaintenance(1);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I place him on my lap and open the control panel on my 
Coil&.

With this&, I can check for any sort of abnormalities&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000020a01">
"Let's see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//蓮メンテ：サブモニター開く(1か2)
	SetOpenSubMaintenance(2);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I looks for any indications from the numerical data on the 
control panel screen&.

&.&.&.Hm&.
There doesn't seem to be anything wrong based on these 
numbers&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000030a01">
"There don't seem to be any issues&, but do you still
 feel weird?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0000040a06">
"Yes&. I can't exactly explain it&, but I feel uneasy&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000050a01">
"I wonder where it's coming from&. I guess it's inside&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Ren's breathing is back to normal compared to before&. 
But I can't let him go just yet&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000060a01">
"Hmmm&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,850,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I push through his fluffy fur&, searching all over his body&.
Ren shakes a little like it's ticklish&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000070a01">
"Nothing wrong on the outside&. Shit&, I need to be more
 careful&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0000080a06">
"But your speed in giving instructions has improved from
 before&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000090a01">
"I guess it's because I'd done Rhyme before&. It doesn't
 feel real&, but&.&.&. Maybe my intuition came back&, or
 something&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000100a01">
"But still&, that field was strange&. Maybe because it was a
 Drive-By&, or maybe because it wasn't mainstream&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 0, null);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	Wait(500);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0000110a06">
"&.&.&.Aoba&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000120a01">
"Hm?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0000130a06">
"Please stop that&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000140a01">
"What is it? Is something wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I stop touching Ren and look at him&. He licks his nose as 
if he wants to tell me something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0000150a06">
"No&, it's&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000160a01">
"What's wrong? Why don't you just tell me?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0000170a06">
"I don't understand it too well&, but&.&.&. I have this
 unexplainable&, peculiar feeling&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000180a01">
"I see&.&.&. I guess I won't be able to understand unless I go
 all the way and open you up&. Does it feel like it'll be
 difficult to get by from day to day?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0000190a06">
"Not exactly&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0000200a01">
"Then I guess we'll wait and see&.&.&. If it ever feels like
 you can't take it anymore&, you better say so right away&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0000210a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	//蓮メンテ：閉じる
	CloseMaintenance();

	CoilNewDelete(400,100);

	//待ち
	CoilWait();

	Wait(1000);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	SoundPlay("@dm012",0,450,true);

	CreateTextureEX("絵ＥＶ111", 111, -250, -205, "cg/ev/m/ev026蓮メンテb_m.jpg");
	Move("絵ＥＶ111", 1000, -250, -268, Dxl3, false);
	Fade("絵ＥＶ111", 1000, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I close the control panel&, pick up Ren&, and look into his 
eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
His moist&, black eyes look back at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5100sl.nss"]

}
