.class public Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/listener/IReadUpdateTagListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;->updateTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IUpdateTagListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;

.field public final synthetic val$id:Ljava/lang/String;

.field public final synthetic val$listener:Lcom/ss/android/ugc/effectmanager/effect/listener/IUpdateTagListener;

.field public final synthetic val$taskID:Ljava/lang/String;

.field public final synthetic val$updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IUpdateTagListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->this$0:Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->val$taskID:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->val$updateTime:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->val$listener:Lcom/ss/android/ugc/effectmanager/effect/listener/IUpdateTagListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    return-void
.end method

.method public onFinally()V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->this$0:Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->val$taskID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->val$updateTime:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$2;->val$listener:Lcom/ss/android/ugc/effectmanager/effect/listener/IUpdateTagListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;->access$000(Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IUpdateTagListener;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
