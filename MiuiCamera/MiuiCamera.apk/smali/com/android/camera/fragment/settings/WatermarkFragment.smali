.class public Lcom/android/camera/fragment/settings/WatermarkFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/settings/WatermarkFragment$AllCapTransformationMethod;,
        Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;,
        Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;,
        Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;
    }
.end annotation


# static fields
.field public static final MSG_BG_FILTER_WORDS:I = 0x1

.field public static final MSG_MT_UI:I = 0x2

.field public static final PROP_NAME_MAX:I = 0xe

.field public static final TAG:Ljava/lang/String; = "WatermarkFragment"


# instance fields
.field public mAlertDialog:Landroid/app/AlertDialog;

.field public mBackgroundHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

.field public mDefindWatermark:Ljava/lang/String;

.field public mEtUserDefineWords:Landroid/widget/EditText;

.field public mLocked:Z

.field public mPreferenceGroup:Landroidx/preference/PreferenceScreen;

.field public mThreadBg:Landroid/os/HandlerThread;

.field public mUiHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

.field public mUserDefineWatermark:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mLocked:Z

    return-void
.end method

.method public static synthetic OooO0O0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "WatermarkFragment"

    const-string p1, "onClick NegativeButton"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mThreadBg:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mThreadBg:Landroid/os/HandlerThread;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/settings/WatermarkFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->release()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->doInBackground(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->doInMainThread(Landroid/os/Message;)V

    return-void
.end method

.method private checkContentlegal(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/sensitive/SensitiveFilter;->getInstance()Lcom/android/camera/sensitive/SensitiveFilter;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/camera/sensitive/SensitiveFilter;->getSensitiveWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkContentlength(Ljava/lang/CharSequence;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->getTextLength(Ljava/lang/CharSequence;)Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;

    move-result-object p1

    iget-boolean v0, p1, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->isOverLimit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->legalString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10028d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private doInBackground(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->checkContentlegal(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "LEGAL_WORD"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUiHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private doInMainThread(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "LEGAL_WORD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->getCustomWords()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setCustomWatermark(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/Util;->generateWatermark2File()V

    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackUserDefineWatermark()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/camera/ui/ValuePreference;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f100290

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const v0, 0x7f10028a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private filterPreference()V
    .locals 3

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->o00000Oo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_time_watermark_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v0

    const-string/jumbo v1, "user_define_watermark_key"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v2, "pref_dualcamera_watermark_key"

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o000ooOO()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->removePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private getCustomWords()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeActivity()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->getPreferenceXml()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_1

    const-string v0, "WatermarkFragment"

    const-string v1, "fail to init PreferenceGroup"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->filterPreference()V

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->registerListener()V

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->updateEntries()V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private onSave()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mBackgroundHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private registerListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_time_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_dualcamera_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "user_define_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    return-void
.end method

.method private release()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mBackgroundHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$BackgroundHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUiHandler:Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mThreadBg:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    return-void
.end method

.method private showDialog()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1100b2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0032

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0903b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f10028c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    new-instance v4, Lcom/android/camera/fragment/settings/WatermarkFragment$AllCapTransformationMethod;

    invoke-direct {v4, v3}, Lcom/android/camera/fragment/settings/WatermarkFragment$AllCapTransformationMethod;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment$1;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const v2, 0x7f1006c8

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1007b5

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0OO/OooO00o/OooOo0/OoooO0/OooO;->OooO00o:LOooO0O0/OooO0OO/OooO00o/OooOo0/OoooO0/OooO;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1007b6

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO0OO/OooO00o/OooOo0/OoooO0/OooOO0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo0/OoooO0/OooOO0;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/camera/fragment/settings/WatermarkFragment$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/settings/WatermarkFragment$1;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/camera/fragment/settings/WatermarkFragment$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/settings/WatermarkFragment$2;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void
.end method

.method private updateEntries()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "pref_dualcamera_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v2

    invoke-static {v2}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OooO00o(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v2

    invoke-static {v2}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OooO00o(Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Landroidx/preference/Preference;

    check-cast v2, Lcom/android/camera/ui/ValuePreference;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/camera/ui/ValuePreference;

    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->isFromSecureKeyguard()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedDualCameraWaterMark()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v3

    invoke-static {v3}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->OooO00o(Z)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "WatermarkFragment"

    const-string p2, "onClick PositiveButton"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->onSave()V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getPreferenceXml()I
    .locals 1

    const v0, 0x7f130009

    return v0
.end method

.method public getTextLength(Ljava/lang/CharSequence;)Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;
    .locals 17

    new-instance v0, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    move v9, v5

    :goto_0
    const/4 v12, 0x1

    if-ge v9, v3, :cond_7

    move-object/from16 v13, p1

    invoke-interface {v13, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    const-string v15, "[^\\x00-\\xff]"

    invoke-virtual {v14, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    xor-int/2addr v12, v15

    const-wide v15, 0x3ff4a3d70a3d70a4L    # 1.29

    if-gez v8, :cond_0

    :goto_1
    goto :goto_3

    :cond_0
    if-ne v12, v8, :cond_1

    goto :goto_1

    :cond_1
    if-eq v12, v8, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    int-to-double v10, v10

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    div-double/2addr v10, v15

    :goto_2
    add-double/2addr v6, v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v2, v5, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v10, v3, -0x1

    if-ne v9, v10, :cond_5

    if-nez v8, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    int-to-double v10, v8

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    int-to-double v10, v8

    div-double/2addr v10, v15

    :goto_4
    add-double/2addr v6, v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v2, v5, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    cmpg-double v8, v6, v10

    if-gtz v8, :cond_6

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move v8, v12

    goto :goto_0

    :cond_7
    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    cmpl-double v2, v6, v10

    if-lez v2, :cond_8

    iput-boolean v12, v0, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->isOverLimit:Z

    goto :goto_5

    :cond_8
    iput-boolean v5, v0, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->isOverLimit:Z

    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/fragment/settings/WatermarkFragment$TextJudge;->legalString:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mLocked:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "from_where"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":miui:starting_window_label"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f100711

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->initializeActivity()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->release()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPause()V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->o000OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ThermalHelper;->updateDisplayFrameRate(ZLandroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x67b0c582

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x6871f874

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "user_define_watermark_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "pref_dualcamera_watermark_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_2

    :cond_3
    return v3

    :cond_4
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o000ooOO()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    if-eq v0, v4, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->isFromSecureKeyguard()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_6
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    return v4
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick: key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WatermarkFragment"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "user_define_watermark_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->showDialog()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onRestart()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->updateEntries()V

    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onResume()V

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->o000OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ThermalHelper;->updateDisplayFrameRate(ZLandroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->checkContentlength(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public updateConflictPreference(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method
