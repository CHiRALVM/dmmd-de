//<continuation number="1660">
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


scene dm5663h.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	#ev566蓮とＨ挿入=true;
	#ev566蓮とＨ挿入a=true;
	#ev566蓮とＨ挿入b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5664h.nss";

}


scene dm5663h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm014",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg210011_2_暴露海と砂浜");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -710, -523, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0304]
&.&.&.That wasn't enough&.

I become embarassed finding myself think that way and 
felt Ren move behind me&.

{
	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,900,null,false);
//	CreateSE("SE02","se擬音_水_はねる12");
//	MusicStart("SE02",0,700,0,1000,null,false);
}
Suddenly&, he raises one of my legs and puts something 
larger in place of where his fingers were before&.

I knew what it was&, but look up to Ren anyway&.

I have to get ready for it&, since he's much&, much 
larger than me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000980a06">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
But I wasn't able to say anything when I met his eyes&.

He wanted me so honestly and badly&.&.&.

Ren licks up the back of my neck as I lay there unraveled&.

I was caught up in a sentimental moment as he gradually 
pushed into me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ110", 110, -1024, -292, "cg/ev/l/ev566蓮とＨ挿入_l.jpg");
	Move("絵ＥＶ110", 1000, -749, -52, Dxl1, false);
	Fade("絵ＥＶ110", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0312]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000990a01">
"Ngh- ah&, ahh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0313]
His cock pushes my insides open&. It's hard to breathe&.

It's not something I can't handle&, but&.&.&. 
It still hurt&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateTextureEX("絵ＥＶ111", 111, -11, -550, "cg/ev/l/ev566蓮とＨ挿入_l.jpg");
	Move("絵ＥＶ111", 500, -11, -371, Dxl1, false);
	Fade("絵ＥＶ111", 500, 1000, null, true);
	Delete("絵ＥＶ110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001000a01">
"Fuu&.&.&. kuh!"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001010a06">
"Aoba&.&.&. Are you okay? Does it hurt?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
Trying to let him in&, I shook my head left and right&.

Ren cautiously made his way in&.

He breathed in frantic breaths until it was all the way in&.

&.&.&.And when he stopped&, deep breaths fell into my ear&.

It's all the way in&.
And just a moment later&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateTextureEX("絵ＥＶ112", 112, Center, Middle, "cg/ev/ev566蓮とＨ挿入.jpg");
	Move("絵ＥＶ111", 1000, -11, -189, Dxl1, false);
	Fade("絵ＥＶ112", 1000, 1000, null, true);
	Delete("絵ＥＶ111");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001030a01">
"Ah&, ah! &.&.&.Ah&, Ren&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
Ren started to move&, and I let out a loud voice&, 
unprepared&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0332]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001040a01">
"Aaah&, it's&.&.&.! Ah&.&.&.!"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001050a06">
"&.&.&.&.&.Fu&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
My voice spills out as he pushes in further&. I try to hold it down&, but it's too difficult&.

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001060a06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateTextureEX("絵ＥＶ113", 113, -34, 0, "cg/ev/l/ev566蓮とＨ挿入a_l.jpg");
	Move("絵ＥＶ113", 1000, -203, -89, Dxl1, false);
	Fade("絵ＥＶ113", 1000, 1000, null, true);
	Delete("絵ＥＶ112");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001070a01">
"Ngh&.&.&. Ungh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0342]
Ren calls out my name in his hot breaths and thrusts 
deeply&.

At first it was suffocating&, but now I feel nicely numb on the inside&.

As I thought&, Ren knows where I feel it&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001080a01">
"&.&.&.-!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0352]
An odd sensation hits me just as I give into the pleasure&.

I'm the one taking it&, but I feel like I'm also&.&.&. 
it's like the pleasure is soaking in&.

What is this feeling?

Could it be&.&.&.

Maybe because Ren and I are the same existence?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0353]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001090a01">
"Fu&, ah&.&.&. Ahh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0354]
As I'm pushed around&, a pleasant&, prickling pleasure 
immediately made me stiff&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
Ren pushes my leg up and jerks me off with his hand&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,800,0,1000,null,false);

	CreateTextureEX("絵ＥＶ114", 114, -192, -563, "cg/ev/l/ev566蓮とＨ挿入a_l.jpg");
	Move("絵ＥＶ114", 500, -192, -431, Dxl1, false);
	Fade("絵ＥＶ114", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001100a01">
"Ren&.&.&.! Ah&, ahh&.&.&. Ngah&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0362]
I raise my voice&, gasping&, while a sweet warmth fills my 
chest&. It's different from what I feel down below&.

If we're actually sharing the same sensations&.&.&.

This just may be what Ren is feeling as I yell out his 
name&.

Does that mean Ren is feeling this intense pleasure I'm 
going through&, as well?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,800,0,1000,null,false);

	Move("絵ＥＶ113", 500, -203, -174, Dxl1, false);
	Move("絵ＥＶ114", 500, -192, -231, Dxl1, false);
	FadeDelete("絵ＥＶ114", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0363]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001110a01">
"Ha- ahhhh&, ha&, ahhh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
I become unable to think as Ren pounds into me over and 
over again&.

He hits all of my sweet spots hard&, and it feels as if 
I'm melting away&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0371]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001120a06">
"Ha&.&.&.!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001130a01">
"M-Mnn&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0372]
Ren sticks his tongue out and licks my jaw&.
When I open my mouth&, his tongue glides from my jaw 
and into my mouth&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ113", 500, -203, 0, Dxl1, false);

	CreateTextureEX("絵ＥＶ115", 115, Center, Middle, "cg/ev/ev566蓮とＨ挿入a.jpg");
	Fade("絵ＥＶ115", 500, 1000, null, true);

	Delete("絵ＥＶ113");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0373]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001140a01">
"Haa&.&.&. Ngh&.&.&. Mn&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001150a06">
"&.&.&.&.&.&.Hff&, Aoba&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0381]
I listen to Ren in our deep kiss&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0382]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001160a06">
"Aoba&.&.&. Aoba&.&.&. Aoba&, Aoba&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001170a01">
"Ren&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0383]
His voice turns more hoarse each time he yells my name&. 
The sound of it was painful&, so I covered Ren's lips&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
Right now&, all we're doing is sharing our feelings&.

How I love him&.
And how he loves me&.

Only that&.

I wanted to hold him as much as I possibly could&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ*", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001180a01">
"&.&.&.Ren&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001190a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001200a01">
"&.&.&.We'll always be together&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0401]
Ren frowns for a moment and then smiles&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0402]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001210a06">
"&.&.&.Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ120", 120, -192, -563, "cg/ev/l/ev566蓮とＨ挿入a_l.jpg");
	Move("絵ＥＶ120", 500, -192, -431, Dxl1, false);
	Fade("絵ＥＶ120", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0403]
He kisses me with a bit of his teeth showing&, and we 
entangle our tongues again&.

He still kept thrusting&, making both my eyes and my 
body feel blurred&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ121", 121, 0, 0, "cg/ev/ev566蓮とＨ挿入a.jpg");
	Move("絵ＥＶ120", 500, -192, -331, Dxl1, false);
	Fade("絵ＥＶ121", 500, 1000, null, true);

	Delete("絵ＥＶ120");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0404]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001220a01">
"Mn&.&.&. Ngh&, ah! &.&.&.Ahh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0405]
Ren pushes in as far as he can into me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0406]
I can't gage what's happening exactly&, as my mind has 
turned into mush&.

Ren breathes erratically&, loud gasps coming from his 
throat from time to time&.

Swaying as hard as he could&, Ren's lips slipped off and 
his fangs ended up on my jaw&.

With his tongue&, he licked up all of the dripping saliva 
off of it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001230a01">
"Ah&, un&.&.&. Mn&.&.&. Mn!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001240a06">
"&.&.&.! &.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0412]
Ren tightly grasps onto my wet cock&, pushing me even 
farther&.

The stimulus is so intense that tears start to come out&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ123", 123, -186, 0, "cg/ev/l/ev566蓮とＨ挿入a_l.jpg");
	Move("絵ＥＶ123", 1000, -186, -70, Dxl3, false);
	Fade("絵ＥＶ123", 1000, 1000, null, true);

	Delete("絵ＥＶ122");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0413]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001250a01">
"Ha&, ah&, Ren&.&.&. No&, you- ah&, ah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001260a06">
"Ngh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
While he licks my cheek and I yell incoherently&, Ren 
thrusts into me with more force&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0422]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001270a01">
"Ah&, ah! No&, Ren&.&.&.!"

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001280a06">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ24");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreateTextureEX("絵ＥＶ124", 124, -186, -70, "cg/ev/l/ev566蓮とＨ挿入b_l.jpg");
	Move("絵ＥＶ124", 800, -186, -110, Dxl1, false);
	Fade("絵ＥＶ124", 800, 1000, null, true);

	Delete("絵ＥＶ123");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0423]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001290a01">
"Ah&, ahhhh&.&.&.!!!"

As I was completely hollowed out&.&.&. 
A violent pleasure ran through my entire body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,800,0,1300,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

	CreateTextureEX("絵ＥＶ125", 125, Center, Middle, "cg/ev/ev566蓮とＨ挿入b.jpg");
	Move("絵ＥＶ124", 500, -186, 0, Dxl1, false);
	Fade("絵ＥＶ125", 500, 1000, null, true);

	Delete("絵ＥＶ124");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
I jolted backwards&, covering Ren's hand with semen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001300a01">
"&.&.&.Ungh&.&.&. Ah&.&.&."

{
	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001310a06">
"Hah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0432]
He faintly moaned&, pulling my hips towards him&.

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001330a06">
"&.&.&.! &.&.&.&.&."

I felt Ren tremble inside me&, and my insides in turn 
become heated and moist&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0433]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001320a01">
"&.&.&.Haa&, haa&, ha&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
Ren and I roughly breathe&, with no words for each other&.

I'm completely exhausted and unable to move&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,900,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	SetVolumeEX("@dm*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0441]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6001340a01">
"Mn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0442]
When I limply recline against Ren&, he takes his cock out&.

It's still warm where it was&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0443]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6001350a06">
"&.&.&.Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0444]
Ren held me close from behind&. 
I closed my eyes and put my hands over his arms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5664h.nss"]

}