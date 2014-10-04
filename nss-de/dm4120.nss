//<continuation number="80">
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


scene dm4120.nss_MAIN
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

	#bg302011_5_グリッター部屋01天井=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4130.nss";

}


scene dm4120.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 500, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01天井.jpg");
	CreateTextureSP("絵背景弐", 100, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01ベッド角.jpg");

	FadeDelete("上背景", 2000, null, true);

	Wait(500);

//	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/2000010a01">
"Mn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureSP("絵背景参", 80, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01ベッド角.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
&.&.&.&.&.

&.&.&.Huh? I&.&.&.

&.&.&.Oh&, right&.

Yesterday&, I fell asleep on the couch&.&.&.

Wait&.

&.&.&.What?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※がばっとベッドで起きる音
	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(300,300,0,5,0,0,500,Axl1,false);
	FadeDelete("絵背景", 300, Dxl2, true);

	Delete("絵背景参");

	Wait(300);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/2000020a01">
"&.&.&.A bed?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//　TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I was clearly just sleeping on a bed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
　TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演出", 500, 0, 0, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");
	Move("絵演出", 0, @-200, @-100, null, true);

	Move("絵演出", 4000, @-624, @0, AxlDxl, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(2000);

	FadeDelete("絵演出", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
When did I get up and move to a bed?
Was I half asleep?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureSP("絵背景参", 50, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01.jpg");

//※とんとんとん、と包丁で何かを切る音が遠くから
	CreateSE("SE01","se環境_動作_料理01L");
	MusicStart("SE01",1000,200,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
My head is still hazy from just waking up&, and I hear 
something come from outside the room&.

A tasty smell reaches my nose and my stomach cries out&.

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景800", 800, -242, -389, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");
	Move("絵背景800", 500, -242, -431, Dxl3, false);
	Fade("絵背景800", 500, 1000, null, true);

	FadeDelete("絵背景弐", 500, Dxl2, true);

	Delete("絵背景参");

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/2000030a01">
"&.&.&.Tch&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I have a bad feeling about it and get up from the bed&. Ren 
starts up by my feet&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm41/2000040a06">
"Morning&, Aoba&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/2000050a01">
"Morning&, Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 2000);

	CreateColorSPadd("絵色白", 900, "WHITE");
	Delete("絵背景800");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I hold Ren and as I'm about to leave the room&, I stop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵色白", 1500, Axl1, false);

	CreateSE("SE01","se擬音_コミカル_キラキラ02");
	MusicStart("SE01",0,500,0,1400,null,false);
	CreateSE("SE02","se擬音_コミカル_キラキラ01");
	MusicStart("SE02",0,500,0,1400,null,false);

	FadeDelete("絵板写", 700, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
&.&.&.For some reason&, it seems like the room's sparkling&.

It was pretty before&, but it's been polished or something&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※とんとんとん、と包丁で何かを切る音
	CreateSE("SE01","se環境_動作_料理01L");
	MusicStart("SE01",1000,500,0,1000,null,true);

	Delete("絵背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
&.&.&.I hear the sound of a chopping knife come from outside 
the room&.

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(500,true);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
I leave the room and walk down the corridor&. I notice 
that there's something sitting on the living room table&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//覇：ここどうします？

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/2000060a01">
"What's this&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
An extravagant amount of food sits on the table&.

Chicken&, soup&, and even some cooked fish are spread out 
over the table&.

I've never seen anything like this&. I can't even imagine 
what they must all taste like&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(21000,63,316,22);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリア】※漫符：音符～♪
<voice name="クリア" class="クリア" src="voice/dm41/2000070a04">
"Hm&, hmhm&, huumm!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	ClearComicNexDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
I can hear someone humming from the bar counter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/
	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/2000080a01">
"He&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("絵背景100", 100, -187, -400, "cg/bg/l/bg302021_5_グリッター居間_l.jpg");
	Move("絵背景100", 500, 0, -400, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

	OnBG(10,"bg302031_5_グリッターバーカウンター");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
I rush over to the source of the humming&, and&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	FadeDelete("絵背景100", 300, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
I freeze in place&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4130.nss"]
}
