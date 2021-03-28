.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/OooOo0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/OooOo0o;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/OooOo0o;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-static {v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO0OO(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method
