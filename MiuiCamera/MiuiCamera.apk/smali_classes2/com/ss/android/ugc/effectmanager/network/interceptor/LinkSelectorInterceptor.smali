.class public Lcom/ss/android/ugc/effectmanager/network/interceptor/LinkSelectorInterceptor;
.super Lcom/ss/android/ugc/effectmanager/network/interceptor/BaseInterceptor;
.source ""


# instance fields
.field public mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/link/LinkSelector;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/network/interceptor/BaseInterceptor;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/network/interceptor/LinkSelectorInterceptor;->mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)Z
    .locals 1

    instance-of v0, p1, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/network/interceptor/LinkSelectorInterceptor;->mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->updateBestHost()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
