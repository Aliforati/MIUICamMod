.class public Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;
.super Lcom/android/camera/fragment/beauty/AbBeautyFragmentBusiness;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/AbBeautyFragmentBusiness;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentShowFragmentList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0OO;->o0OoOo0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/BeautyLevelFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;-><init>()V

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o0O00O()LOooO0O0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0O0;->o00o0oo0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportBeautyMakeup()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/beauty/MakeupBeautyFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/MakeupBeautyFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FrontFragmentBusiness;->mFragments:Ljava/util/List;

    return-object v0
.end method
