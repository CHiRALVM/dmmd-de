//<continuation number="180">
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


scene dm0280.nss_MAIN
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
	$GameName = "dm0290.nss";

}


scene dm0280.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm002",0,450,true);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/8000010a01">
"Good morning&."

{
	Fw("fw羽賀_通常_normal");
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000020b07">
"Good morning&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The next day&, when I go to work at Heibon as usual&, 
Haga-san is organizing the stock&.

I leave my bag behind the counter and put down Ren before 
going over to Haga-san immediately&.

I have to properly apologize for yesterday&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete();

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/8000030a01">
"Boss&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete();

	St("C",740, @0,@0,"st羽賀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000040b07">
"Yes?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/8000050a01">
"I'm sorry about yesterday's delivery&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeStPro("C", 1500, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000060b07">
"Eh? Aah&, no no&, don't worry about it anymore&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
As he says that&, his expression clouds&.
I'm surprised to see him do that&.

Maybe after I lost the package he was yelled at by the 
customer&.&.&.?

If so&, then it's my fault&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/8000070a01">
"Um&, I'm really sorry&. I'd like to apologize to the
 customer too if possible&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000080b07">
"Oh&, yes&. About that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Haga-san pushes up his glasses with a troubled face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	St("C",740, @0,@0,"st羽賀_通常_normal2");
	FadeSt("C",0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000090b07">
"Since yesterday's delivery was done with pre-payment&, I
 wanted to ask if he wanted a refund or a re-delivery&, and
 tried to contact him in various ways&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000091b07">
"I even tried to contact the control center&, but it was
 completely useless&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/8000100a01">
"Useless?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_normal2");
	FadeSt("C",0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000110b07">
"Yes&. I couldn't contact him at all&. Since the sender and
 recipient were the same I tried checking the address&, but 
 a person with a completely different name lived there&.&.&."

{	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",200,true);}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000120b07">
"And he said he didn't remember ordering any goods&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/8000130a01">
"In other words&, was it a prank?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000140b07">
"It is very likely&. But I don't know why anyone would
 want to do such a thing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Maybe&.&.&.

Even if I suggest it's a prank&, it was already paid&, 
and it would only be a loss for the other party&.

Why would anyone do something like that?

I tilt my head together with Haga-san&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_normal2");
	FadeSt("C",200,true);
	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeStPro("C", 3550, 180);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000150b07">
"It's fine as is&.&.&. but it still doesn't feel right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/8000160a01">
"Yeah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);
	CreateColorSP("絵回想色", 3000, 0, 0, 1024, 768, #624a2b);
	CreateTextureSPmul("絵回想", 4000, Center, Middle, "cg/ef/effi回想01.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg201021_0_ライムノイズ01.jpg");

	Request("絵回想色",OverlayRender);

	St("C",740, @0,@0,"stウサギ頭_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
More importantly&, I&.&.&. was pulled into Rhyme during that 
delivery&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);

	Delete("絵背景");
	Delete("絵回*");

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Suspicion drifts through the air&, and it suddenly becomes 
time to open shop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm02/8000170b07">
"Oops&, have to get to work&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete();

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
Haga-san hurries out of the shop&.

I feel somewhat unpleasant&.&.&. and no matter how hard I 
think about it I don't understand it&, so I'll have to give 
up for now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete();

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/8000180a01">
"All right&. I have some work to do too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I decide to change my mood and return to the counter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);
	Wait(1000);

//※次ファイル["dm0290.nss"]

}
