use types::c;

// Audio device
export @symbol("InitAudioDevice") fn InitAudioDevice() void;
export @symbol("CloseAudioDevice") fn CloseAudioDevice() void;
export @symbol("IsAudioDeviceReady") fn IsAudioDeviceReady() bool;
export @symbol("SetMasterVolume") fn SetMasterVolume(volume: f32) void;
export @symbol("GetMasterVolume") fn GetMasterVolume() f32;

// Wave/Sound
export @symbol("LoadWave") fn LoadWave(fileName: *const c::char) Wave;
export @symbol("LoadWaveFromMemory") fn LoadWaveFromMemory(fileType: *const c::char, fileData: nullable *const u8, dataSize: int) Wave;
export @symbol("IsWaveValid") fn IsWaveValid(wave: Wave) bool;
export @symbol("LoadSound") fn LoadSound(fileName: *const c::char) Sound;
export @symbol("LoadSoundFromWave") fn LoadSoundFromWave(wave: Wave) Sound;
export @symbol("LoadSoundAlias") fn LoadSoundAlias(source: Sound) Sound;
export @symbol("IsSoundValid") fn IsSoundValid(sound: Sound) bool;
export @symbol("UpdateSound") fn UpdateSound(sound: Sound, data: nullable *const opaque, sampleCount: int) void;
export @symbol("UnloadWave") fn UnloadWave(wave: Wave) void;
export @symbol("UnloadSound") fn UnloadSound(sound: Sound) void;
export @symbol("UnloadSoundAlias") fn UnloadSoundAlias(alias: Sound) void;
export @symbol("ExportWave") fn ExportWave(wave: Wave, fileName: *const c::char) bool;
export @symbol("ExportWaveAsCode") fn ExportWaveAsCode(wave: Wave, fileName: *const c::char) bool;

// Wave/Sound management
export @symbol("PlaySound") fn PlaySound(sound: Sound) void;
export @symbol("StopSound") fn StopSound(sound: Sound) void;
export @symbol("PauseSound") fn PauseSound(sound: Sound) void;
export @symbol("ResumeSound") fn ResumeSound(sound: Sound) void;
export @symbol("IsSoundPlaying") fn IsSoundPlaying(sound: Sound) bool;
export @symbol("SetSoundVolume") fn SetSoundVolume(sound: Sound, volume: f32) void;
export @symbol("SetSoundPitch") fn SetSoundPitch(sound: Sound, pitch: f32) void;
export @symbol("SetSoundPan") fn SetSoundPan(sound: Sound, pan: f32) void;
export @symbol("WaveCopy") fn WaveCopy(wave: Wave) Wave;
export @symbol("WaveCrop") fn WaveCrop(wave: nullable *Wave, initFrame: int, finalFrame: int) void;
export @symbol("WaveFormat") fn WaveFormat(wave: nullable *Wave, sampleRate: int, sampleSize: int, channels: int) void;
export @symbol("LoadWaveSamples") fn LoadWaveSamples(wave: Wave) nullable *f32;
export @symbol("UnloadWaveSamples") fn UnloadWaveSamples(samples: nullable *f32) void;

// Music
export @symbol("LoadMusicStream") fn LoadMusicStream(fileName: *const c::char) Music;
export @symbol("LoadMusicStreamFromMemory") fn LoadMusicStreamFromMemory(fileType: *const c::char, data: nullable *const u8, dataSize: int) Music;
export @symbol("IsMusicValid") fn IsMusicValid(music: Music) bool;
export @symbol("UnloadMusicStream") fn UnloadMusicStream(music: Music) void;
export @symbol("PlayMusicStream") fn PlayMusicStream(music: Music) void;
export @symbol("IsMusicStreamPlaying") fn IsMusicStreamPlaying(music: Music) bool;
export @symbol("UpdateMusicStream") fn UpdateMusicStream(music: Music) void;
export @symbol("StopMusicStream") fn StopMusicStream(music: Music) void;
export @symbol("PauseMusicStream") fn PauseMusicStream(music: Music) void;
export @symbol("ResumeMusicStream") fn ResumeMusicStream(music: Music) void;
export @symbol("SeekMusicStream") fn SeekMusicStream(music: Music, position: f32) void;
export @symbol("SetMusicVolume") fn SetMusicVolume(music: Music, volume: f32) void;
export @symbol("SetMusicPitch") fn SetMusicPitch(music: Music, pitch: f32) void;
export @symbol("SetMusicPan") fn SetMusicPan(music: Music, pan: f32) void;
export @symbol("GetMusicTimeLength") fn GetMusicTimeLength(music: Music) f32;
export @symbol("GetMusicTimePlayed") fn GetMusicTimePlayed(music: Music) f32;

// AudioStream
export @symbol("LoadAudioStream") fn LoadAudioStream(sampleRate: u32, sampleSize: u32, channels: u32) AudioStream;
export @symbol("IsAudioStreamValid") fn IsAudioStreamValid(stream: AudioStream) bool;
export @symbol("UnloadAudioStream") fn UnloadAudioStream(stream: AudioStream) void;
export @symbol("UpdateAudioStream") fn UpdateAudioStream(stream: AudioStream, data: nullable *const opaque, frameCount: int) void;
export @symbol("IsAudioStreamProcessed") fn IsAudioStreamProcessed(stream: AudioStream) bool;
export @symbol("PlayAudioStream") fn PlayAudioStream(stream: AudioStream) void;
export @symbol("PauseAudioStream") fn PauseAudioStream(stream: AudioStream) void;
export @symbol("ResumeAudioStream") fn ResumeAudioStream(stream: AudioStream) void;
export @symbol("IsAudioStreamPlaying") fn IsAudioStreamPlaying(stream: AudioStream) bool;
export @symbol("StopAudioStream") fn StopAudioStream(stream: AudioStream) void;
export @symbol("SetAudioStreamVolume") fn SetAudioStreamVolume(stream: AudioStream, volume: f32) void;
export @symbol("SetAudioStreamPitch") fn SetAudioStreamPitch(stream: AudioStream, pitch: f32) void;
export @symbol("SetAudioStreamPan") fn SetAudioStreamPan(stream: AudioStream, pan: f32) void;
export @symbol("SetAudioStreamBufferSizeDefault") fn SetAudioStreamBufferSizeDefault(bufSize: int) void;
export @symbol("SetAudioStreamCallback") fn SetAudioStreamCallback(stream: AudioStream, callback: AudioCallback) void;
export @symbol("AttachAudioStreamProcessor") fn AttachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback) void;
export @symbol("DetachAudioStreamProcessor") fn DetachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback) void;
export @symbol("AttachAudioMixedProcessor") fn AttachAudioMixedProcessor(processor: AudioCallback) void;
export @symbol("DetachAudioMixedProcessor") fn DetachAudioMixedProcessor(processor: AudioCallback) void;
