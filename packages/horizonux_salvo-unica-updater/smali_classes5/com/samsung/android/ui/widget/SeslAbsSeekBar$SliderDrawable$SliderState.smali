.class Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$SliderState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SeslAbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;)V
    .locals 0

    .line 2257
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$SliderState;->this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2258
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 2261
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2265
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$SliderState;->this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    return-object v0
.end method
