.class public Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;
.super Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$FlushOperation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;->send(Ljava/io/Reader;)Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$FlushOperation<",
        "Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

.field public final synthetic val$input:Ljava/io/Reader;

.field public final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    iput-object p3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->val$input:Ljava/io/Reader;

    iput-object p4, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$FlushOperation;-><init>(Ljava/io/Flushable;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;
    .locals 3

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->this$0:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->val$input:Ljava/io/Reader;

    iget-object v2, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$10;->run()Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;

    move-result-object v0

    return-object v0
.end method
