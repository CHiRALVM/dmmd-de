//<continuation number="160">
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


scene dm1280.nss_MAIN
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
	$GameName = "dm1290.nss";

	//▼頭痛レベル設定
	$HALevel=2;

}


scene dm1280.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg303031_5_娯楽施設竜峰の部屋");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, -576, "cg/bg/l/bg303031_5_娯楽施設竜峰の部屋_l.jpg");

	CreatePlainSP("絵板写", 100);
	SetShade("絵板写", SEMIHEAVY);

	Delete("上背景");

//※ＳＥ：カチャカチャと金属の器具をいじる音
	CreateSE("SE11","se環境_動作_彫り具準備01L");
	MusicStart("SE11",0,700,0,1000,null,true);

	Wait(1000);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.

I can hear a faint sound&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 2000, 300, null, true);

	HAFade(6000, 0,false);

	Wait(200);

//	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/8000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I open my eyes&, and feel a slight pain in my head&.

This is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵色黒", 1500, null, false);
	FadeDelete("絵板写", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
&.&.&.The same place&, Ryuuhou's room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I was lying down on the futon for some time&.

An oil lamp floats back and forth&, and a moving shadow 
sways as if it's alive&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/8000020b05">
"So you're awake?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/8000030a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I turn my head to the sound of his voice&, but I don't move&.

My body has gone numbingly heavy&.

I was drinking tea with Ryuuhou here&, and&.&.&. 
That tea must've been laced&.

Damn it&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/8000040b05">
"You still can't move&, can you? You shouldn't try&. You'll
 hurt yourself&, and even bite your tongue if you try to
 talk&."

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/8000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※カチャカチャと金属の器具をいじる音

/*
	CreateSE("SE11","se環境_動作_彫り具準備01L");
	MusicStart("SE11",1000,700,0,1400,null,true);

	SetVolumeEX("SE11", 3000, 0, null);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Ryuuhou's tone was always polite up until now&. I get an 
upleasant feeling&, like a ceremony of a sort is about to 
start&.

I hear the sound of small metal clashing together&.

And smell a mix of ink and antiseptic&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/8000060a01">
"Wh&.&.&.at&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/8000070b05">
"You shouldn't talk&."

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/8000080a01">
"What- are-doing&.&.&."

{	Fw("fw竜峰_通常_pride");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/8000090b05">
"Well&. In short&, I'm furthering my research&. It hurts to
 call it research though&, tattoos are my everything&, after
 all&."

{	Fw("fw竜峰_通常_normal");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/8000100b05">
"If I scatter my flower petals onto your back&, I wonder how the flowers will react? Perhaps they will bloom through
 your life force&. I want to see&."

{
	SetVolumeEX("SE*", 0, 0, null);
	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/8000110a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I feel something cold on my back&. My shirt is completely 
rolled up&.

Was that Ryuuhou's hand? It was as cold as ice&.

{	SoundPlay("@dm007a",0,450,true);}
He sticks something like a thin rod out in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/8000120b05">
"See? This will penetrate your skin&, and ink will soak
 through all of it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
A brush?
&.&.&.No&.

A fine pointed needle&.

Going onto my skin&.&.&.

Coming to the realization of what's about to happen&, I 
break out in a cold sweat&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I need to escape&.&.&.
But my body won't move&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/8000130a01">
"&.&.&.Guh&.&.&."

{	Fw("fw竜峰_通常_pride");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/8000140b05">
"It's no use&, you'll just make it hurt more&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
I try to get up&, and have a look on my face as if begging 
for mercy&. Ryuuhou stands up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/8000150b05">
"I need to get some different tools&. Just hold on for a
 bit&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_足音_歩く02");
	MusicStart("SE01",0,450,0,1000,null,false);

	Wait(2500);

	CreateSE("SE01","se物体_ドア鉄_扉開く01b");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0066]
I hear the sound of slow walking over the tatami mat&, and 
then the sound of the door opening and closing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/8000160a01">
"Shit&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm1290.nss"]

}
