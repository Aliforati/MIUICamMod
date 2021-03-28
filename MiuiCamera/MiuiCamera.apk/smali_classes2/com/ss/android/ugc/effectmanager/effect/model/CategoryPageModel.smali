.class public Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public category_effects:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryEffects()Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;->category_effects:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    return-object v0
.end method

.method public setCategoryEffects(Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryPageModel;->category_effects:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    return-void
.end method
