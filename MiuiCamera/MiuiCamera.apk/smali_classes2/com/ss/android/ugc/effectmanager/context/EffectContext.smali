.class public Lcom/ss/android/ugc/effectmanager/context/EffectContext;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mEffectConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

.field public mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->mEffectConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    new-instance v0, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    invoke-direct {v0, p0}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;)V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getLinkSelectorConfiguration()Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->linkSelectorConfigure(Lcom/ss/android/ugc/effectmanager/link/model/configuration/LinkSelectorConfiguration;)V

    return-void
.end method


# virtual methods
.method public getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->mEffectConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    return-object v0
.end method

.method public getLinkSelector()Lcom/ss/android/ugc/effectmanager/link/LinkSelector;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    return-object v0
.end method
