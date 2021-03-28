.class public Lcom/ss/android/ttve/common/TEEglStateSaver;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "TEEglStateSaver"


# instance fields
.field public mSavedContext:Landroid/opengl/EGLContext;

.field public mSavedDisplay:Landroid/opengl/EGLDisplay;

.field public mSavedDrawSurface:Landroid/opengl/EGLSurface;

.field public mSavedReadSurface:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    return-void
.end method


# virtual methods
.method public getSavedEGLContext()Landroid/opengl/EGLContext;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public logState()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TEEglStateSaver"

    if-nez v0, :cond_0

    const-string v0, "Saved context DOES NOT equal current."

    goto :goto_0

    :cond_0
    const-string v0, "Saved context DOES equal current."

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x305a

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Saved read surface is EGL_NO_SURFACE"

    goto :goto_1

    :cond_1
    const-string v0, "Saved read surface DOES NOT equal current."

    goto :goto_1

    :cond_2
    const-string v0, "Saved read surface DOES equal current."

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3059

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Saved draw surface is EGL_NO_SURFACE"

    goto :goto_2

    :cond_3
    const-string v0, "Saved draw surface DOES NOT equal current."

    goto :goto_2

    :cond_4
    const-string v0, "Saved draw surface DOES equal current."

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Saved display DOES NOT equal current."

    goto :goto_3

    :cond_5
    const-string v0, "Saved display DOES equal current."

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public makeNothingCurrent()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public makeSavedStateCurrent()V
    .locals 4

    iget-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public saveEGLState()V
    .locals 4

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TEEglStateSaver"

    if-eqz v0, :cond_0

    const-string v0, "Saved EGL_NO_CONTEXT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x305a

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedReadSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Saved EGL_NO_SURFACE"

    if-eqz v0, :cond_1

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0x3059

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDrawSurface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttve/common/TEEglStateSaver;->mSavedDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Saved EGL_NO_DISPLAY"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
