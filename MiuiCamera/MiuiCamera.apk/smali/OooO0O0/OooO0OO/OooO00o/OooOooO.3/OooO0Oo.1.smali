.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOooO/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$TopAlert;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOooO/OooO0Oo;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOooO/OooO0Oo;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {v0}, Lcom/android/camera/scene/SemanticsClassResultParse;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    return-void
.end method
