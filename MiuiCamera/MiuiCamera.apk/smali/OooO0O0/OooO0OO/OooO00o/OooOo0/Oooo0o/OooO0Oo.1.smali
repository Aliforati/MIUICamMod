.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo0o/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

.field private final synthetic OooO0O0:Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo0o/OooO0Oo;->OooO00o:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo0o/OooO0Oo;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    return-void
.end method


# virtual methods
.method public final onUpdate()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo0o/OooO0Oo;->OooO00o:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo0o/OooO0Oo;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V

    return-void
.end method
