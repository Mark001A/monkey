.class public Lcom/facebook/drawee/c/a;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/c/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/c/a$a;

.field final b:F

.field c:Z

.field d:Z

.field e:J

.field f:F

.field g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/drawee/c/a;->b:F

    .line 47
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->a()V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/drawee/c/a;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/drawee/c/a;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/c/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/c/a;->a:Lcom/facebook/drawee/c/a$a;

    .line 58
    invoke-virtual {p0}, Lcom/facebook/drawee/c/a;->b()V

    .line 59
    return-void
.end method

.method public a(Lcom/facebook/drawee/c/a$a;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/drawee/c/a;->a:Lcom/facebook/drawee/c/a$a;

    .line 73
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return v5

    .line 84
    :pswitch_0
    iput-boolean v5, p0, Lcom/facebook/drawee/c/a;->c:Z

    .line 85
    iput-boolean v5, p0, Lcom/facebook/drawee/c/a;->d:Z

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/drawee/c/a;->e:J

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/facebook/drawee/c/a;->f:F

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/facebook/drawee/c/a;->g:F

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/facebook/drawee/c/a;->f:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/facebook/drawee/c/a;->b:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/facebook/drawee/c/a;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/facebook/drawee/c/a;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 93
    :cond_1
    iput-boolean v4, p0, Lcom/facebook/drawee/c/a;->d:Z

    goto :goto_0

    .line 97
    :pswitch_2
    iput-boolean v4, p0, Lcom/facebook/drawee/c/a;->c:Z

    .line 98
    iput-boolean v4, p0, Lcom/facebook/drawee/c/a;->d:Z

    goto :goto_0

    .line 101
    :pswitch_3
    iput-boolean v4, p0, Lcom/facebook/drawee/c/a;->c:Z

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/facebook/drawee/c/a;->f:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/facebook/drawee/c/a;->b:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/facebook/drawee/c/a;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/facebook/drawee/c/a;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 104
    :cond_2
    iput-boolean v4, p0, Lcom/facebook/drawee/c/a;->d:Z

    .line 106
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/drawee/c/a;->d:Z

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/drawee/c/a;->e:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->a:Lcom/facebook/drawee/c/a$a;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/facebook/drawee/c/a;->a:Lcom/facebook/drawee/c/a$a;

    invoke-interface {v0}, Lcom/facebook/drawee/c/a$a;->n()Z

    .line 115
    :cond_4
    iput-boolean v4, p0, Lcom/facebook/drawee/c/a;->d:Z

    goto/16 :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/facebook/drawee/c/a;->c:Z

    .line 67
    iput-boolean v0, p0, Lcom/facebook/drawee/c/a;->d:Z

    .line 68
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/facebook/drawee/c/a;->c:Z

    return v0
.end method
