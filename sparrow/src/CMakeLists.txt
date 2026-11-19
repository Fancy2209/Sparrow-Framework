cmake_minimum_required(VERSION 3.0...3.13)
project(Sparrow VERSION 3.0.0 LANGUAGES OBJC)

add_library(Sparrow STATIC
    Classes/SPALSoundChannel.m
    Classes/SPALSound.m
    Classes/SparrowBase.m
    Classes/SparrowClass.m
    Classes/SPAudioEngine.m
    Classes/SPAVSoundChannel.m
    Classes/SPAVSound.m
    Classes/SPBaseEffect.m
    Classes/SPBitmapChar.m
    Classes/SPBitmapFont.m
    Classes/SPBlendMode.m
    Classes/SPBlurFilter.m
    Classes/SPButton.m
    Classes/SPCache.m
    Classes/SPCanvas.m
    Classes/SPColorMatrixFilter.m
    Classes/SPColorMatrix.m
    Classes/SPContext.m
    Classes/SPDebug.m
    Classes/SPDelayedInvocation.m
    Classes/SPDisplacementMapFilter.m
    Classes/SPDisplayObjectContainer.m
    Classes/SPDisplayObject.m
    Classes/SPEnterFrameEvent.m
    Classes/SPEventDispatcher.m
    Classes/SPEventListener.m
    Classes/SPEvent.m
    Classes/SPFragmentFilter.m
    Classes/SPFrameBuffer.m
    Classes/SPGLTexture.m
    Classes/SPImage.m
    Classes/SPIndexData.m
    Classes/SPJuggler.m
    Classes/SPMacros.m
    Classes/SPMatrix3D.m
    Classes/SPMatrix.m
    Classes/SPMovieClip.m
    Classes/SPNSExtensions.m
    Classes/SPOpenGL.m
    Classes/SPOverlayView.m
    Classes/SPPoint3D.m
    Classes/SPPoint.m
    Classes/SPPolygon.m
    Classes/SPPoolObject.m
    Classes/SPPressEvent.m
    Classes/SPPress.m
    Classes/SPProgram.m
    Classes/SPPVRData.m
    Classes/SPQuadBatch.m
    Classes/SPQuad.m
    Classes/SPRectangle.m
    Classes/SPRenderSupport.m
    Classes/SPRenderTexture.m
    Classes/SPResizeEvent.m
    Classes/SPSoundChannel.m
    Classes/SPSound.m
    Classes/SPSprite3D.m
    Classes/SPSprite.m
    Classes/SPStage.m
    Classes/SPStatsDisplay.m
    Classes/SPSubTexture.m
    Classes/SPTextField.m
    Classes/SPTextureAtlas.m
    Classes/SPTexture.m
    Classes/SPTouchEvent.m
    Classes/SPTouch.m
    Classes/SPTouchProcessor.m
    Classes/SPTransitions.m
    Classes/SPTweenedProperty.m
    Classes/SPTween.m
    Classes/SPURLConnection.m
    Classes/SPUtils.m
    Classes/SPVertexData.m
    Classes/SPViewController.m
    Classes/SPView.m
)

find_package(PkgConfig)
pkg_check_modules(GNUSTEP REQUIRED gnustep-base)
target_link_libraries(Sparrow PRIVATE GNUSTEP_LIBRARIES)
target_include_directories(Sparrow PRIVATE GNUSTEP_INCLUDE_DIRS Classes/)